<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Models\pemesanan;
use Illuminate\Http\Request;

class pemesananController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $pemesanan = pemesanan::where('id_pemesanan', 'LIKE', "%$keyword%")
                ->orWhere('id_produk', 'LIKE', "%$keyword%")
                ->orWhere('jumlah_produk', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $pemesanan = pemesanan::latest()->paginate($perPage);
        }

        return view('admin.pemesanan.index', compact('pemesanan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.pemesanan.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        
        $requestData = $request->all();
        
        pemesanan::create($requestData);

        return redirect('admin/pemesanan')->with('flash_message', 'pemesanan added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $pemesanan = pemesanan::findOrFail($id);

        return view('admin.pemesanan.show', compact('pemesanan'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $pemesanan = pemesanan::findOrFail($id);

        return view('admin.pemesanan.edit', compact('pemesanan'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        
        $requestData = $request->all();
        
        $pemesanan = pemesanan::findOrFail($id);
        $pemesanan->update($requestData);

        return redirect('admin/pemesanan')->with('flash_message', 'pemesanan updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        pemesanan::destroy($id);

        return redirect('admin/pemesanan')->with('flash_message', 'pemesanan deleted!');
    }
}
