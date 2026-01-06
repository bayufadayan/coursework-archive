<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StartController;

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

// Basic Routing using Callable Function
Route::get('/hello', function () {
    return "Kemana aja, baru belajar Laravel";
});
Route::get('/hello/{name}', function (string $name) {
    return "Halooo, " . $name;
});
Route::get('/hello/{name}/kelas/{class}', function (string $name, string $class) {
    return "Haloo " . $name . ". Kamu kelas " . $class .  " yaa??";
});

// Available routing method
Route::get("/contoh-get", function () {
    return "Ini adalah GET METHOD";
});
Route::post("/contoh-post", function () {
    return "Ini adalah POST METHOD";
});
Route::put("/contoh-put", function () {
    return "Ini adalah PUT METHOD";
});
Route::patch("/contoh-patch", function () {
    return "Ini adalah PATCH METHOD";
});
Route::delete("/contoh-delete", function () {
    return "Ini adalah DELETE METHOD";
});
Route::options("/contoh-options", function () {
    return "Ini adalah OPTIONS METHOD";
});

// Route match and any
Route::match(['get', 'post'], "/coba-match", function () {
    return "Ini coba match method GET dan POST";
});
Route::any("/coba-any", function () {
    return "Ini ANY, berarti apapun method nya pasti bisa";
});

// Controller Method & Route
// Register controller with method to route
Route::get('/start', [StartController::class, 'index']);

// Render view with variable data
Route::get('/hello-view/{name}', [StartController::class, 'helloView']);