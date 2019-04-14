<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsercartsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        
            Schema::create('usercarts', function (Blueprint $table) {
                $table->increments('id');
                $table->integer('userID')->unsigned();
                $table->foreign('userID')->references('id')->on('users')->onDelete('cascade');
                $table->integer('productID')->unsigned();
                $table->foreign('productID')->references('id')->on('products')->onDelete('cascade');
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
        Schema::dropIfExists('usercarts');
    }
}
