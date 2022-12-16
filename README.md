====================================================================
NAMA       : Erick Daniswara
STUDENT ID : 03081200034
====================================================================

1. Tambahkan satu buah table pada web aplikasi kemudian buatlah halaman CRUD dengan menggunakan CRUD generator, serta tambahkan menu untuk mengakses table tersebut pada sidebar(30poin).
= Pada bagian ini, saya membuat CRUD Pemesanan dengan code yaitu 
php artisan crud:generate pemesanan --fields='id_pemesanan#integer; id_produk#integer; jumlah_produk#integer;' --view-path=admin --controller-namespace=App\Http\Controllers\Admin --route-group=admin --form-helper=html
step selanjutnya melakukan executing dengan "php artisan migrate"
dimana pada bagian ini juga saya sudah membuat tampilannya di sidebar.

2. Buatlah sebuah view untuk melakukan analisis data yang relevan dengan topik final project anda, simpan queryview tersebut kedalam file queryUAS.sql(20poin)
= saya telah membuat view di phpmyadmin dengan nama "vpemesanan" dengan code yaitu
CREATE VIEW vpemesanan AS
SELECT pdk.id_produk, pdk.nama_produk, pdk.harga, pms.id_pemesanan, pms.jumlah_produk
FROM produklists pdk
INNER JOIN pemesanans pms ON pms.id_produk=pdk.id_produk
dan melakukan ekspor keseluruhan file database uas dengan format nama queryUAS.sql

3. Buatlah sebuah antarmuka untuk menampilkan view pada soal 2, kemudian tambahkan tombol untuk mencetaknya kedalam format laporan pdf. Sertakan logo UPH dan nama berserta studentID anda pada header laporan (30)
= Pada bagian ini saya sudah membuat tampilan pada bagian sidebar yaitu "View Pemesanan", dimana tampilan ini berasal dari view dalam phpmyadmin yang saya buat pada no.2
lalu pada tampilan view pemesaan itu saya juga menambahkan tombol print yang menuju ke print laporan PDF
pada hasil print PDF tetapi menggunakan validasi seperti mau save atau cancel
lalu didalam print tersebut terdapat logo UPH beserta dengan Nama dan juga Student ID serta menampilkan view dari tampilan yang telah dibuat.

4. Buat validasi data untuk halaman insert dan update soal nomor 1 (10 Poin)
= Insert (ADD) dan Update (Edit) telah dibuat berdasarkan CRUD generate yang telah di-execute.