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
Route::get('/añadir', [DetallesController::class, 'create'])->name('añadir.index');
Route::post('/personajes', [DetallesController::class, 'store'])->name('personajes.store');
Route::get('/personajes/{id}/edit', [DetallesController::class, 'edit'])->name('personajes.edit');
Route::put('/personajes/{id}', [DetallesController::class, 'update'])->name(('personajes.update'));
Route::get('/personajes/{id}/delete', [DetallesController::class, 'delete'])->name('personajes.delete');
Route::delete('/personajes/{id}', [DetallesController::class, 'destroy'])->name('personajes.destroy');