<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
class KasirController extends Controller
{
    public function dashboard_kasir(){
        $transaksi = DB::table('tb_transaksi')->get();
        $kategori = DB::table('tb_kategori')->get();
        $masakan = DB::table('tb_masakan')->where('status_masakan','tersedia')
        ->join('tb_kategori', function($join){
            $join->on('tb_masakan.kategori_id','=','tb_kategori.id_kategori');
        })->get();
        return view('kasir/dashboard_kasir',compact('transaksi','kategori','masakan'));
    }
}