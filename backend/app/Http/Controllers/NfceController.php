<?php

namespace App\Http\Controllers;

use App\Http\Requests\NfceRequest;
use App\Jobs\ImportarNfce;
use App\Models\Nfce;
use Illuminate\Http\Request;

class NfceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $nfces = Nfce::with('items')->orderByDesc('issue_date')->get();
        return response()->json($nfces);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(NfceRequest $request)
    {
        if ($request->has('url')) {
            $request->merge([
                'chave_acesso' => str($request->input('url'))->match('/\?p=(\d{44})/'),
                'estado' => str($request->input('url'))->match('/fazenda.(\w+).gov.br/'),
            ]);
        }

        if ($request->has('chave_acesso')) {
            $request->merge([
                'chave_acesso' => str($request->chave_acesso)->replace(' ', ''),
                // estado => já vem tratado na requisição
            ]);
        }

        // Aborta a requisição se a chave de acesso não tiver 44 caracteres após tratamento
        abort_if(strlen($request->chave_acesso) !== 44, 422, 'Chave de acesso inválida');


        $notaExiste = Nfce::where('chave_acesso', $request->chave_acesso)->exists();

        if ($notaExiste) {
            $nfce = Nfce::where('chave_acesso', $request->chave_acesso)->sole();
        } else {
            $nfce = Nfce::create($request->all());
        }

        // // Aborta a requisição se a nota já foi importada
        // abort_if ($notaExiste && $request->input('forceUpdate'), 422, 'Nota já importada');

        ImportarNfce::dispatch($nfce);

        return response()->json($nfce);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
