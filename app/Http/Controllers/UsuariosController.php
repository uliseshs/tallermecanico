<?php

namespace App\Http\Controllers;

use App\Models\UsuariosModel;
use Illuminate\Http\Request;

class UsuariosController extends Controller
{
    public function usuarios(){
        return view("Usuarios");
    }
    public function inicio(){
        return view("Inicio");
    }
    public function GuardarDatos(Request $datos){

        $usuario = new UsuariosModel();

        $usuario -> nombre = $datos -> nombre;
        $usuario -> apellidoPaterno = $datos -> apellidopaterno;
        $usuario -> apellidoMaterno = $datos -> apellidomaterno;
        $usuario -> numeroTelefono = $datos -> telefono;
        $usuario -> Correo = $datos -> email;
        $usuario -> contraseña = $datos ->  password;
        $usuario->save();
        $usuario = UsuariosModel::all();
        return view("MostrarUsuarios",["usuario"=>$usuario]);


    }
    public function mostrarUsuarios(){
        $usuario = UsuariosModel::all();
        return view("MostrarUsuarios",["usuario"=>$usuario]);
    }

    public function UsuariosRegistrados(){
        return view("MostrarUsuarios");
    }
    public function AgendarCita(){
        return view("AgendarCita");
    }

}
