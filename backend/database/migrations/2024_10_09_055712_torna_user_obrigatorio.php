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
        if (!Schema::hasColumn('nfces', 'user_id')) {
            Schema::table('nfces', function (Blueprint $table) {
                $table->unsignedBigInteger('user_id')
                    ->nullable(false)
                    ->change();
            });
        }

        if (!Schema::hasColumn('carrinhos', 'user_id')) {
            Schema::table('carrinhos', function (Blueprint $table) {
                $table->unsignedBigInteger('user_id')
                    ->nullable(false)
                    ->change();
            });
        }

        if (!Schema::hasColumn('estoques', 'user_id')) {
            Schema::table('estoques', function (Blueprint $table) {
                $table->unsignedBigInteger('user_id')
                    ->nullable(false)
                    ->change();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
