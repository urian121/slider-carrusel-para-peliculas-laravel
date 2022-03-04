<?php

use App\Http\Controllers\PeliculaController;
use Illuminate\Support\Facades\Route;


Route::resource('/', PeliculaController::class);