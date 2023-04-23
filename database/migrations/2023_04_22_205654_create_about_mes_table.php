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
        Schema::create('about_mes', function (Blueprint $table) {
            $table->id();
            $table->string('img');
            $table->string('name_en');
            $table->string('name_uk')->nullable();
            $table->json('positions');
            $table->text('description_en');
            $table->text('description_uk')->nullable();
            $table->json('socials');
            $table->string('phone_number');
            $table->string('address');
            $table->string('address_url');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about_mes');
    }
};
