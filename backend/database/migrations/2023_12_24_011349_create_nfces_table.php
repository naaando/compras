<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('nfces', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users');
            $table->string('url')->nullable();
            $table->string('chave_acesso')->nullable();
            $table->string('access_key')->nullable();
            $table->string('estado')->nullable();
            $table->string('number')->nullable();
            $table->string('serie')->nullable();
            $table->datetime('issue_date')->nullable();
            $table->string('company_name')->nullable();
            $table->string('company_cnpj')->nullable();
            $table->string('company_address')->nullable();
            $table->unsignedInteger('exchange')->nullable();
            $table->unsignedDecimal('tax')->nullable();
            $table->string('payment_type')->nullable();
            $table->unsignedDecimal('total_before_discount')->nullable();
            $table->unsignedDecimal('total_after_discount')->nullable();
            $table->unsignedInteger('total_items')->nullable();
            $table->unsignedDecimal('discounts')->nullable();
            $table->json('raw')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('nfces');
    }
};
