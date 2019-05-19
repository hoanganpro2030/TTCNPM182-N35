<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNotificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notifications', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('userID')->unsigned();
            $table->foreign('userID')->references('id')->on('users')->onDelete('cascade');
            $table->integer('customerID')->unsigned();
            $table->foreign('customerID')->references('id')->on('users')->onDelete('cascade');
            $table->integer('orderID')->unsigned();
            $table->foreign('orderID')->references('id')->on('orders')->onDelete('cascade');
            $table->boolean('isNew');
            $table->boolean('isDone');
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
        Schema::dropIfExists('notifications');
    }
}
