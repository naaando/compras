<?php

namespace App\Jobs;

use App\Exceptions\ScrapperException;
use App\Models\Nfce;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class ImportarNfce implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     */
    public function __construct(private Nfce $nfce)
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $url = $this->nfce->url;

        if (empty($url)) {
            $accessKey = $this->nfce->chave_acesso;
            $state = $this->nfce->state;
            $versionQrcode = '2';
            $environmentType = '1'; // 1 - Produção, 2 - Homologação
            $csc = '1';
            $hash = Str::random(40); // Qualquer valor

            $url = "http://www4.fazenda.$state.gov.br/consultaNFCe/QRCode?p=$accessKey|$versionQrcode|$environmentType|$csc|$hash";
        }

        $scrapperResponse = Http::post('http://scrapper:5000/url', [
            'url' => $url,
        ]);

        if ($scrapperResponse->failed() || isset($scrapperResponse->json()['error'])) {
            Log::error('Erro ao importar NFCE', ['error' => $scrapperResponse->body()]);
            throw new ScrapperException('Erro ao importar NFCE');
        }

        $json = collect($scrapperResponse->json())->flatMap(function ($value, $key) {
            // Torna cada elemento do array em uma entrada no array principal prefixado com o nome do array
            // Ex: company => ['address' => 'Rua', 'cnpj' => '123'] vira ['company_address' => 'Rua', 'company_cnpj' => '123']
            if ($key === 'company') {
                $array = [];
                foreach ($value as $k => $v) {
                    $array[$key . '_' . $k] = $v;
                }

                return $array;
            }

            if ($key === 'totals') {
                return $value;
            }

            return [$key => $value];
        })->except(['items', 'error']);

        $this
            ->nfce
            ->update([
                'raw' => $scrapperResponse->json(),
                ...$json->toArray()
            ]);

        $this
            ->nfce
            ->items()
            ->createMany($scrapperResponse->json()['items']);
    }
}
