@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">pemesanan {{ $pemesanan->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/admin/pemesanan') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        <a href="{{ url('/admin/pemesanan/' . $pemesanan->id . '/edit') }}" title="Edit pemesanan"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>

                        <form method="POST" action="{{ url('admin/pemesanan' . '/' . $pemesanan->id) }}" accept-charset="UTF-8" style="display:inline">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="Delete pemesanan" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button>
                        </form>
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th>ID</th><td>{{ $pemesanan->id }}</td>
                                    </tr>
                                    <tr><th> Id Pemesanan </th><td> {{ $pemesanan->id_pemesanan }} </td></tr><tr><th> Id Produk </th><td> {{ $pemesanan->id_produk }} </td></tr><tr><th> Jumlah Produk </th><td> {{ $pemesanan->jumlah_produk }} </td></tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
