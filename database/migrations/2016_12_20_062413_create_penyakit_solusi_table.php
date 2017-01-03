<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePenyakitSolusiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penyakit_solusi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('penyakit_id')->unsigned();
            $table->foreign('penyakit_id')->references('id')->on('penyakits');


            $table->integer('solusi_id')->unsigned();
            $table->foreign('solusi_id')->references('id')->on('solusis');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
