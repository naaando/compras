<?php

use App\Http\Controllers\CarrinhoController;
use App\Http\Controllers\EstoqueController;
use App\Http\Controllers\GoogleAuthController;
use App\Http\Controllers\NfceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('/auth/google', GoogleAuthController::class);

Route::resource('nfce', NfceController::class);
Route::resource('carrinho', CarrinhoController::class);
Route::resource('estoque', EstoqueController::class);
