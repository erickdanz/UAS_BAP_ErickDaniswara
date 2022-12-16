@extends('layouts/app')

@section('content')
    <div class="table-responsive">
    <table class="table">
        <thead>
            <tr>
                <th>Id Produk</th><th>Nama Produk</th><th>Harga</th><th>Id Pemesanan</th><th>Jumlah Produk</th>
            </tr>
        </thead>
        <tbody>
        <a href="{{'/print'}}" title="Print invoice"><button class="btn btn-warning btn-sm"><i class="fa fa-print" aria-hidden="true"></i> Print</button></a>
        @foreach ($list_data as $data)
            <tr>
                <td>{{ $data->id_produk }}</td><td>{{ $data->nama_produk }}</td><td>{{$data->harga }}</td><td>{{$data->id_pemesanan }}</td><td>{{$data->jumlah_produk }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
  </div>
@endsection