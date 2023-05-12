<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DetallesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/index', [DetallesController::class, 'index'])->name('detalles.index');
Route::get('/añadir', [DetallesController::class, 'añadir'])->name('añadir.index');
Route::get('/editar', [DetallesController::class, 'editar'])->name('editar.index');
