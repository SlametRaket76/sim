<?php

namespace App\Http\Controllers\User;

use App\Confirmation;
use App\User;
use App\P3M;
use App\Anggota;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ConfirmationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:web');
    }

    public function create()
    {
        // $datas = User::where('id', '!=', Auth::guard('web')->user()->id)->get();
        $auth_id = Auth::guard('web')->user()->id;
        $datas = P3M::where('jenis_proposal', 'penelitian')->get();
        return view('pages.user.confirmation.create', compact('datas'));
    }
    public function notification()
    {
        
        return view('pages.user.confirmation.notification');
    }

    public function store(Request $request)
    {
        $rules = [
            'Konfirmasi' => 'required|regex:/^[a-zA-Z][a-zA-Z ]*$/',
            'alamat' => 'required',
        ];

        $message =[
            'required' => ':attribute anda telah dikirim',
            'regex' => ':attribute tidak boleh angka',
        ];
        $this->validate($request, $rules, $message);

        $data = new HKI();
        $data->id_user = Auth::guard('web')->user()->id;
        $data->name = Auth::guard('web')->user()->name;
        $data->alamat = $request->alamat;
        $data->kewarganegaraan = $request->kewarganegaraan;
        $data->judul_cipta = $request->judul_cipta;
        $data->save();

        return redirect()->route('user.home.index');
    }
}
