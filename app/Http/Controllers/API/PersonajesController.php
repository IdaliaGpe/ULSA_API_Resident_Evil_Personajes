<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Personaje;

class PersonajesController extends Controller
{
    public function index() {
        $personajes = Personaje::all();

        return $personajes;
    }
}
