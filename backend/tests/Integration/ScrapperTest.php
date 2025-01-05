<?php

use Illuminate\Support\Facades\Http;

test('scrapper funciona', function () {
    // http://<dominio>/nfce/qrcode?p=<chave_acesso>|<versao_qrcode>|<tipo_ambiente>|<identificador_csc>|<codigo_hash>

    $scrapperResponse = Http::post('http://scrapper:5000/url', [
        'url' => "http://www4.fazenda.rj.gov.br/consultaNFCe/QRCode?p=33240513798820000112650010007572281529605013|2|1|1|A69A7DD2EFAED500FBDE7F12141D7064F779A3FD",
    ])->throw();

    expect($scrapperResponse->json())
        ->access_key->toBe('33240513798820000112650010007572281529605013')
        ->company->address->toBe('ETR.FRNACISCO ANTONIO RUSSO,1174,LOTE 2 QD 2,CENTRO,RIO DE JANEIRO,RJ')
        ->company->cnpj->toBe('13.798.820/0001-12')
        ->company->name->toBe('DROGARIA SAUDE VITEL VITEL LTDA ME')
        ->issue_date->toBe('2024-05-14 19:49:53-0300')
        ->items->toBe([
            [
                'code' => '879032',
                'currency' => 'R$',
                'name' => 'GASTROGEL MENTA C/20 COMP',
                'price' => 26.99,
                'quantity' => 1,
                'total_price' => 26.99,
                'unity_of_measure' => 'UN',
            ],
            [
                'code' => '125896',
                'currency' => 'R$',
                'name' => 'DIPIRONA 500MG C/10 CPR MEDLEY',
                'price' => 8.95,
                'quantity' => 1,
                'total_price' => 8.95,
                'unity_of_measure' => 'UN',
            ],
            [
                'code' => '110142',
                'currency' => 'R$',
                'name' => 'VALDA CHICLETE',
                'price' => 1,
                'quantity' => 1,
                'total_price' => 1,
                'unity_of_measure' => 'UN',
            ],
        ])
        ->number->toBe('757228')
        ->serie->toBe('1')
        ->totals->toBe([
            'discounts' => 6.96,
            'exchange' => 0,
            'payment_type' => 'Dinheiro',
            'tax' => 0,
            'total_after_discount' => 29.98,
            'total_before_discount' => 36.94,
            'total_items' => 3,
        ]);
})->group('integration');
