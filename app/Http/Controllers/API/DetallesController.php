<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Detalle;

class DetallesController extends Controller
{
    public function index() {
        $detalles = Detalle::all();

        return $detalles;
    }
}
