<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Nfce>
 */
class NfceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //
        ];
    }

    public function url(): NfceFactory
    {
        return $this->state([
            'url' => 'http://www4.fazenda.rj.gov.br/consultaNFCe/QRCode?p=33240513798820000112650010007572281529605013|2|1|1|A69A7DD2EFAED500FBDE7F12141D7064F779A3FD'
        ]);
    }
}
