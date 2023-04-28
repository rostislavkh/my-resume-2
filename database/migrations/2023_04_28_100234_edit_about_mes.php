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
        Schema::table('about_mes', function (Blueprint $table) {
            $table->string('meta_author_en');
            $table->string('meta_author_uk');
            $table->string('meta_title_en');
            $table->string('meta_title_uk');
            $table->string('meta_desc_uk');
            $table->string('meta_desc_en');
            $table->string('meta_keywords');
            $table->string('meta_img');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('about_mes', function (Blueprint $table) {
            $table->dropColumn([
                'meta_author_en',
                'meta_author_uk',
                'meta_title_en',
                'meta_title_uk',
                'meta_desc_uk',
                'meta_desc_en',
                'meta_keywords',
                'meta_img'
            ]);
        });
    }
};
