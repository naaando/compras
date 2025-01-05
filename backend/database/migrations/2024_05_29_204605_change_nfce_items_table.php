<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        DB::statement('ALTER TABLE nfce_items ALTER COLUMN total_price TYPE DECIMAL(10, 5) USING total_price::numeric');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        DB::statement('ALTER TABLE nfce_items ALTER COLUMN total_price TYPE VARCHAR(255)');
    }
};
