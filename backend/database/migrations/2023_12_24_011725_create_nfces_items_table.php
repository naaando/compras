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
        Schema::create('nfce_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('nfce_id')->constrained('nfces');
            $table->string('code')->nullable();
            $table->string('name')->nullable();
            $table->unsignedDecimal('price')->nullable();
            $table->unsignedDecimal('quantity')->nullable();
            $table->string('currency')->nullable();
            $table->string('unity_of_measure')->nullable();
            $table->string('total_price')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('nfces_items');
    }
};
