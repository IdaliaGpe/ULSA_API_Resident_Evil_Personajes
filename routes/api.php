<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\FocoController;
use App\Http\Controllers\API\PersonajesController;
use App\Http\Controllers\API\DetallesController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::get('foco',[FocoController::class,'index'])->name('api.foco.index');

Route::get('personaje',[PersonajesController::class,'index'])->name('api.personaje.index');
Route::get('detalle',[DetallesController::class,'index'])->name('api.detalle.index');
