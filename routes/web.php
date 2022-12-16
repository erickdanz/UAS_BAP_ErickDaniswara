<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $list_data = DB::table('vpemesanan')->get();
    return view('admin/tampilan/home',compact('list_data'));
});
Route::get('/print', function () {
    $list_data = DB::table('vpemesanan')->get();
    return view('admin/tampilan/print', compact('list_data'));
});

Route::get('/index',[UserController::class,'indexPage']);
Route::get('beli/{id}',[UserController::class,'beliPage']);
Route::get('about',[UserController::class,'aboutPage']);
Route::get('blog_list',[UserController::class,'blog_listPage']);
Route::get('contact',[UserController::class,'contactPage']);
Route::get('ourstory',[UserController::class,'ourstoryPage']);
Route::get('product',[UserController::class,'productPage']);

Route::resource('admin/produklist', 'App\Http\Controllers\Admin\produklistController');
Route::resource('admin/pengguna', 'App\Http\Controllers\Admin\penggunaController');
// Route::resource('admin/pesanan', 'App\Http\Controllers\Admin\pesananController');
// Route::resource('admin/stokproduk', 'App\Http\Controllers\Admin\stokprodukController');
// Route::resource('admin/invoice', 'App\Http\Controllers\Admin\invoiceController');
// Route::get('admin/invoice/cetak_pdf', 'App\Http\Controllers\Admin\invoiceController@cetak_pdf');
Route::resource('admin/pemesanan', 'App\Http\Controllers\Admin\pemesananController');