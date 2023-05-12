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

    //CREAR PERSONAJES
    public function create() {
        $argumentos = array(); 
        return view('añadir', $argumentos);
    }

    public function store(Request $request) {
        $nuevoPersonaje = new Personaje();
        $nuevoPersonaje->nombre = $request->input('nombre');
        $nuevoPersonaje->genero = $request->input('genero');
        $nuevoPersonaje->edad = $request->input('edad');
        $nuevoPersonaje->relacion = $request->input('relacion');
        $nuevoPersonaje->especialidad = $request->input('especialidad');
        $nuevoPersonaje->estatura = $request->input('estatura');

        $imagen = $request->file('imagen');
            if ($imagen) {
                $nuevoPersonaje->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

        $imagen_2 = $request->file('imagen_2');
        if ($imagen_2) {
            $nuevoPersonaje->imagen_2 = $imagen_2->hashName();
            $imagen_2->store('public/fotos');  
        }
        $nuevoPersonaje->save();
        return redirect()->route('detalles.index');
    }

    //EDITAR
    public function edit($id) {
        $personajes = Personaje::find($id);
        $argumentos['personajes'] = $personajes;

        return view('editar', $argumentos);
    } 

    public function update(Request $request, $id) {
        $personajes = Personaje::find($id);
        $personajes->nombre = $request->input('nombre');
        $personajes->genero = $request->input('genero');
        $personajes->edad = $request->input('edad');
        $personajes->relacion = $request->input('relacion');
        $personajes->especialidad = $request->input('especialidad');
        $personajes->estatura = $request->input('estatura');

        $imagen = $request->file('imagen');
            if ($imagen) {
                $personajes->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

        $imagen_2 = $request->file('imagen_2');
        if ($imagen_2) {
            $personajes->imagen_2 = $imagen_2->hashName();
            $imagen_2->store('public/fotos');  
        }
        $personajes->save();
        return redirect()->route('detalles.index', $id);
    }

    //Eliminar
    public function delete($id) {
        $personajes = Personaje::find($id);
        $argumentos['personaje'] = $personajes;
        return view('personajes.delete', $argumentos);
    }

    public function destroy(Request $request, $id) {
        error_log("HOHO");
        $personajes = Personaje::find($id);
        $personajes->delete();
        return redirect()->route('detalles.index');
    }
}
