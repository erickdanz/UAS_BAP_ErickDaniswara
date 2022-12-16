<b><h1 style="text-align:center">UAS BAP</h1></b>
    <img src="https://rekreartive.com/wp-content/uploads/2018/10/Logo-UPH-Universitas-Pelita-Harapan-Original-PNG.png" alt="" style="margin:  0 0 0 35%; width:30%">
    <style>
        table tr{
            padding: 50px;
            border:3px;
        }
        table td{
            border:2px;
        }
        table th{
            border:2px;
        }
    </style>
    <h1 style="">Nama: Erick Daniswara</h1>
    <h1>NIM: 03081200034</h1>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>Id Produk</th><th>Nama Produk</th><th>Harga</th><th>Id Pemesanan</th><th>Jumlah Produk</th>
                </tr>
            </thead>
            <tbody>
            @foreach ($list_data as $data)
                <tr>
                    <td>{{ $data->id_produk }}</td><td>{{ $data->nama_produk }}</td><td>{{$data->harga }}</td><td>{{$data->id_pemesanan }}</td><td>{{$data->jumlah_produk }}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
      </div>
    <br>
<script>
  window.print();
</script>