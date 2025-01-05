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
        Schema::create('carrinhos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users');
            $table->string('ean')->nullable();
            $table->string('nome')->nullable();
            $table->string('marca')->nullable();
            $table->string('categoria')->nullable();
            $table->string('unidade_medida')->nullable();
            $table->unsignedDecimal('volume')->nullable();
            $table->unsignedDecimal('peso')->nullable();
            $table->unsignedBigInteger('quantidade')->nullable();
            $table->unsignedDecimal('preco_ideal')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('carrinhos');
    }
};
