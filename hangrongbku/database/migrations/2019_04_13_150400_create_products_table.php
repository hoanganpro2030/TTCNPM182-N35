<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('sellerID')->unsigned();
            $table->foreign('sellerID')->references('id')->on('users')->onDelete('cascade');
            $table->integer('price');
            $table->longText('description');
            $table->integer('cateID')->unsigned();
            $table->foreign('cateID')->references('id')->on('categories')->onDelete('cascade');
            $table->boolean('status');
            $table->timestamp('lastTime');
            $table->integer('numStar')->nullable();
            $table->integer('numRate')->nullable();
            $table->string('image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
