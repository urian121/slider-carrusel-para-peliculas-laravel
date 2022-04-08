<?php

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\PeliculaController;
use Illuminate\Support\Facades\Route;


Route::resource('/', PeliculaController::class);
