<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Personaje;

class DetallesController extends Controller
{
    public function index() {
        $detalles = Personaje::all();
        $argumentos['detalles'] = $detalles;

        return view("index", $argumentos);
    }

    public function añadir() {
        $detalles = Personaje::all();
        $argumentos['añadir'] = $detalles;

        return view("añadir", $argumentos);
    }

    public function editar() {
        $detalles = Personaje::all();
        $argumentos['editar'] = $detalles;

        return view("editar", $argumentos);
    }
}
