<?php

namespace App\Http\Controllers;

use App\Models\CitasModel;
use App\Models\UsuariosModel;
use Illuminate\Http\Request;

class CitasController extends Controller
{
  public function AgendaCitas(Request $datos){

          $usuario = new CitasModel();

          $usuario -> NombreCliente = $datos -> nombrecliente;
          $usuario -> TipoCoche = $datos -> coche;
          $usuario -> FallaMecanica = $datos -> falla;
          $usuario -> Entrega = $datos -> enterga;
          $usuario->save();
      $usuario = UsuariosModel::all();
      return view("MostrarCitas",["usuario"=>$usuario]);


      }
    public function CitasRegistradas(){
        $usuario = UsuariosModel::all();
        return view("MostrarCitas",["citas"=>$usuario]);
    }

    public function registrocitas(){
      return view('MostrarCitas');
    }



}
