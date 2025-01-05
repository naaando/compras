<?php

use App\Jobs\ImportarNfce;
use App\Models\Nfce;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Http;

uses(RefreshDatabase::class);

test('salva nfce importada', function () {
    Http::fake([
        'http://scrapper:5000/url' => function () {
            return Http::response([
                "access_key" => "33240513798820000112650010007572281529605013",
                "company" => [
                    "address" => "ETR.FRNACISCO ANTONIO RUSSO,1174,LOTE 2 QD 2,CENTRO,RIO DE JANEIRO,RJ",
                    "cnpj" => "13.798.820/0001-12",
                    "name" => "DROGARIA SAUDE VITEL VITEL LTDA ME"
                ],
                "issue_date" => "2024-05-14 19:49:53-0300",
                "items" => [
                    [
                        "code" => "879032",
                        "currency" => "R$",
                        "name" => "GASTROGEL MENTA C/20 COMP",
                        "price" => 26.99,
                        "quantity" => 1,
                        "total_price" => 26.99,
                        "unity_of_measure" => "UN"
                    ],
                    [
                        "code" => "125896",
                        "currency" => "R$",
                        "name" => "DIPIRONA 500MG C/10 CPR MEDLEY",
                        "price" => 8.95,
                        "quantity" => 1,
                        "total_price" => 8.95,
                        "unity_of_measure" => "UN"
                    ],
                    [
                        "code" => "110142",
                        "currency" => "R$",
                        "name" => "VALDA CHICLETE",
                        "price" => 1,
                        "quantity" => 1,
                        "total_price" => 1,
                        "unity_of_measure" => "UN"
                    ]
                ],
                "number" => "757228",
                "serie" => "1",
                "totals" => [
                    "discounts" => 6.96,
                    "exchange" => 0,
                    "payment_type" => "Dinheiro",
                    "tax" => 0,
                    "total_after_discount" => 29.98,
                    "total_before_discount" => 36.94,
                    "total_items" => 3
                ]
            ]);
        }
    ]);

    $nfce = Nfce::factory()->url()->create();

    ImportarNfce::dispatch($nfce);

    $nfce->refresh();

    expect($nfce->access_key)->toBe('33240513798820000112650010007572281529605013');
    expect($nfce->company_name)->toBe('DROGARIA SAUDE VITEL VITEL LTDA ME');
    expect($nfce->company_address)->toBe('ETR.FRNACISCO ANTONIO RUSSO,1174,LOTE 2 QD 2,CENTRO,RIO DE JANEIRO,RJ');
    expect($nfce->company_cnpj)->toBe('13.798.820/0001-12');
    expect((string) $nfce->issue_date)->toBe('2024-05-14 19:49:53');
    expect($nfce->number)->toBe('757228');
    expect($nfce->serie)->toBe('1');
    expect($nfce->discounts)->toBe('6.96');
    expect($nfce->exchange)->toBe(0);
    expect($nfce->payment_type)->toBe('Dinheiro');
    expect($nfce->tax)->toBe(0);
    expect($nfce->total_after_discount)->toBe('29.98');
    expect($nfce->total_before_discount)->toBe('36.94');
    expect($nfce->total_items)->toBe(3);
    // expect($nfce->items->count())->toBe(3);
    // expect($nfce->items->first()->code)->toBe('879032');
    // expect($nfce->items->first()->currency)->toBe('R$');
    // expect($nfce->items->first()->name)->toBe('GASTROGEL MENTA C/20 COMP');
    // expect($nfce->items->first()->price)->toBe(26.99);
    // expect($nfce->items->first()->quantity)->toBe(1);
    // expect($nfce->items->first()->total_price)->toBe(26.99);
    // expect($nfce->items->first()->unity_of_measure)->toBe('UN');
    // expect($nfce->items->last()->code)->toBe('110142');
    // expect($nfce->items->last()->currency)->toBe('R$');
    // expect($nfce->items->last()->name)->toBe('VALDA CHICLETE');
    // expect($nfce->items->last()->price)->toBe(1);
    // expect($nfce->items->last()->quantity)->toBe(1);
    // expect($nfce->items->last()->total_price)->toBe(1);
    // expect($nfce->items->last()->unity_of_measure)->toBe('UN');
});
