<div class="form-group {{ $errors->has('id_pemesanan') ? 'has-error' : ''}}">
    <label for="id_pemesanan" class="control-label">{{ 'Id Pemesanan' }}</label>
    <input class="form-control" name="id_pemesanan" type="number" id="id_pemesanan" value="{{ isset($pemesanan->id_pemesanan) ? $pemesanan->id_pemesanan : ''}}" >
    {!! $errors->first('id_pemesanan', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('id_produk') ? 'has-error' : ''}}">
    <label for="id_produk" class="control-label">{{ 'Id Produk' }}</label>
    <input class="form-control" name="id_produk" type="number" id="id_produk" value="{{ isset($pemesanan->id_produk) ? $pemesanan->id_produk : ''}}" >
    {!! $errors->first('id_produk', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('jumlah_produk') ? 'has-error' : ''}}">
    <label for="jumlah_produk" class="control-label">{{ 'Jumlah Produk' }}</label>
    <input class="form-control" name="jumlah_produk" type="number" id="jumlah_produk" value="{{ isset($pemesanan->jumlah_produk) ? $pemesanan->jumlah_produk : ''}}" >
    {!! $errors->first('jumlah_produk', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
