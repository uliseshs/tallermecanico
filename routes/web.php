<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuariosController;
use App\Http\Controllers\CitasController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('Inicio');
});
Route::prefix('TallerMecanico')->group(function (){
    Route::get('/ClienteNuevo',[UsuariosController::class,'usuarios'])->name('ClienteNuevo');
    Route::post('/ClienteNuevo',[UsuariosController::class,'GuardarDatos'])->name('Datos.form');
    Route::get('/UsuariosRegistrados',[UsuariosController::class,'mostrarUsuarios']);
    Route::get('/UsuariosRegistrados',[UsuariosController::class,'UsuariosRegistrados']);
    Route::get('/AgendarCita',[UsuariosController::class,'AgendarCita'])->name('agendar.cita');
    Route::post('/AgendarCita',[CitasController::class,'AgendaCitas'])->name('citas.agenda');
    Route::get('/CitasAgendadas',[CitasController::class,'registrocitas']);
    Route::get('/CitasAgendadas',[CitasController::class,'CitasRegistradas']);

});
