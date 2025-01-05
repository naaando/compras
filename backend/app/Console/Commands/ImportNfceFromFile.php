<?php

namespace App\Console\Commands;

use App\Models\Nfce;
use Illuminate\Console\Command;
use Illuminate\Support\Number;

class ImportNfceFromFile extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:import-nfce-from-file';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Import NFCE from file';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $stdin = file_get_contents('php://stdin');
        $sha1 = sha1($stdin);
        $fsize = Number::fileSize(strlen($stdin), 2);
        $this->info("Received | size $fsize | sha1 $sha1");

        $data = json_decode($stdin, true);

        $nfce = Nfce::where('access_key', $data['access_key'])->first();

        // NFCE already exists
        if ($nfce !== null) {
            return $this->nfceAlreadyExists($nfce, $data);
        }

        $this->createNfce($data);
    }

    private function nfceAlreadyExists($nfce, $json): int
    {
        $this->alert('! NFCE already exists');
        $nfceItemsCount = $nfce->items()->count();

        throw_unless(is_array($nfce->raw));
        throw_unless(is_array($json));

        // Compare raw data
        if (strcmp(json_encode($nfce->raw), json_encode($json)) !== 0) {
            $this->error('✗ Raw data mismatch');
        } else {
            $this->info('✓ Raw data match');
        }

        // Compare items count
        if ($nfceItemsCount !== count($json['items'])) {
            $this->error("✗ Items count mismatch: {$nfceItemsCount} vs " . count($json['items']));
        } else {
            $this->info("✓ Items count match: {$nfceItemsCount} vs " . count($json['items']));
        }

        return self::FAILURE;
    }

    private function createNfce($data)
    {
        $nfce = Nfce::create([
            'access_key' => $data['access_key'],
            'number' => $data['number'],
            'serie' => $data['serie'],
            'issue_date' => $data['issue_date'],
            'company_name' => $data['company']['name'],
            'company_cnpj' => $data['company']['cnpj'],
            'company_address' => $data['company']['address'],
            'exchange' => $data['totals']['exchange'],
            'tax' => $data['totals']['tax'],
            'payment_type' => $data['totals']['payment_type'],
            'total_before_discount' => $data['totals']['total_before_discount'],
            'total_after_discount' => $data['totals']['total_after_discount'],
            'total_items' => $data['totals']['total_items'],
            'discounts' => $data['totals']['discounts'],
            'raw' => $data,
        ]);

        $this->info("✓ Created NFCE {$nfce->id}");

        foreach ($data['items'] as $item) {
            $nfce->items()->create([
                'code' => $item['code'],
                'name' => $item['name'],
                'price' => $item['price'],
                'quantity' => $item['quantity'],
                'currency' => $item['currency'],
                'unity_of_measure' => $item['unity_of_measure'],
                'total_price' => $item['total_price'],
            ]);
        }

        $this->info("✓ Created {$nfce->items()->count()} items");
    }
}
