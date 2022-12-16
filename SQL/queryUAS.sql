-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2022 pada 12.08
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_invoice` int(11) DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `nama_pengguna` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_produk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `invoices`
--

INSERT INTO `invoices` (`id`, `created_at`, `updated_at`, `id_invoice`, `id_pengguna`, `nama_pengguna`, `id_pesanan`, `nama_produk`, `jumlah_produk`) VALUES
(1, '2022-12-02 22:11:02', '2022-12-02 22:11:02', 1223334444, 1, 'hans', 1223334444, 'Sambal Ayam Suwir Icikiwir', 2),
(2, '2022-12-02 22:29:10', '2022-12-02 22:29:10', 123, 2, 'udin', 123, 'Sambal Cakalang Candu', 3),
(3, '2022-12-02 22:29:40', '2022-12-02 22:29:40', 1234, 3, 'domp', 1234, 'Sambal Geprek Pedes Ngaco', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_30_150241_create_produklists_table', 1),
(6, '2022_12_02_200740_create_penggunas_table', 2),
(7, '2022_12_02_201003_create_pesanans_table', 2),
(8, '2022_12_02_201116_create_stokproduks_table', 2),
(9, '2022_12_02_201449_create_invoices_table', 2),
(10, '2022_12_16_085927_create_pemesanans_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_pemesanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `jumlah_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `created_at`, `updated_at`, `id_pemesanan`, `id_produk`, `jumlah_produk`) VALUES
(2, '2022-12-16 03:16:49', '2022-12-16 03:26:24', '001', 1, '5'),
(3, '2022-12-16 03:17:14', '2022-12-16 03:26:21', '002', 2, '4'),
(4, '2022-12-16 03:17:34', '2022-12-16 03:26:17', '003', 3, '3'),
(5, '2022-12-16 03:17:51', '2022-12-16 03:26:14', '004', 4, '2'),
(6, '2022-12-16 03:18:21', '2022-12-16 03:26:10', '005', 5, '1'),
(7, '2022-12-16 03:18:52', '2022-12-16 03:26:06', '006', 6, '6'),
(8, '2022-12-16 03:19:19', '2022-12-16 03:26:02', '007', 7, '7'),
(9, '2022-12-16 03:19:34', '2022-12-16 03:25:59', '008', 8, '8'),
(10, '2022-12-16 03:19:49', '2022-12-16 03:25:54', '009', 9, '9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggunas`
--

CREATE TABLE `penggunas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penggunas`
--

INSERT INTO `penggunas` (`id`, `created_at`, `updated_at`, `id_pengguna`, `username`, `nama`) VALUES
(1, '2022-12-02 14:48:24', '2022-12-02 14:48:24', 1, 'hans1', 'hans'),
(2, '2022-12-02 14:48:47', '2022-12-02 14:48:47', 2, 'udin1', 'udin'),
(3, '2022-12-02 14:48:58', '2022-12-02 14:48:58', 3, 'domp1', 'domp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `jumlah_produk` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `created_at`, `updated_at`, `id_pesanan`, `jumlah_produk`, `nama_produk`) VALUES
(1, '2022-12-02 22:30:18', '2022-12-02 22:30:18', 1223334444, 2, 'Sambal Ayam Suwir Icikiwir'),
(2, '2022-12-02 22:30:39', '2022-12-02 22:30:39', 123, 3, 'Sambal Cakalang Candu'),
(3, '2022-12-02 22:31:13', '2022-12-02 22:31:13', 1234, 5, 'Sambal Geprek Pedes Ngaco');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produklists`
--

CREATE TABLE `produklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_produk` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produklists`
--

INSERT INTO `produklists` (`id`, `created_at`, `updated_at`, `id_produk`, `nama_produk`, `harga`, `image`, `deskripsi_produk`) VALUES
(2, '2022-12-02 14:37:21', '2022-12-15 09:36:13', 1, 'Sambal Ayam Suwir Icikiwir', '30000', 'upload\\sambelayam.png', 'Sambel dengan rempah pilihan yang diolah dengan suwiran ayam untuk memberikan kenikmatan dan tekstur disetiap gigitannya.'),
(3, '2022-12-02 14:38:31', '2022-12-15 09:33:57', 2, 'Sambal Cakalang Candu', '30000', 'upload\\sambelcakalang.png', 'Ikan Cakalang yang di suir dan oseng bersama cabe, bawang dan bumbu khas Eatsambel sehingga menciptakan Cakalang Suir yang sangat nikmat sebagai lauk, Isinya penuh dengan daging suir Cakalang.'),
(4, '2022-12-02 14:38:56', '2022-12-15 09:32:25', 3, 'Sambal Cumi Ciamik', '30000', 'upload\\sambelcumi.png', 'Sambel Pedas Cumi Ciamik, SAMBEL BEST SELLER KITA !  Sambel yang di campur dengan Cumi yang segar yang sudah kami bersihkan sampai 2x proses ! Sambel ini sambel yang wangi di karenakan ada perpaduan cumi dengan bahan bahan yang lainnya, Rasa yang nikmat dan LEZAT ! bikin kamu ketagihan Teruss!!   Sambal ini sangat cocok dengan berbagai jenis tipe makanan yang di makan. Mudah untuk dibawa dan disantap dengan makanan apapun sesuai dengan selera.. Dengan menggunakan Botol Kaca sangat mendukung untuk di bawa kemana mana atau berpergian karena bahan nya yang tahan dengan kondisi ruangan.'),
(5, '2022-12-02 14:39:32', '2022-12-15 09:32:55', 4, 'Sambal Geprek Pedes Ngaco', '49000', 'upload\\sambelgeprek.png', 'Sambel Geprek Pedes Ngaco, Sambel paling dasar dari setiap sambal yang ada di Indonesia. Sambal ini kaya akan Rasa pedasnya di tambah dengan bawang - bawang yang di gunakan membuat aroma sambel ini terasa Wangi dan Segar.  Sambel ini sangat cocok dengan berbagai jenis tipe makanan yang ingin kalian santap. Mudah untuk dibawa dan di santap dengan makanan apa pun sesuai dengan selera kita..  Pengiriman kami langsung dihari dimana kalian pesan, karena kita selalu memasak sambel kita setiap harinya untuk langsung bisa dikirim, sehingga sampai di tempat anda dengan kondisi yang sangat Fresh. Dengan menggunakan Botol Kaca sangat mendukung untuk di bawa kemana mana atau berpergian karena bahan nya yang tahan dengan kondisi ruangan.'),
(6, '2022-12-02 14:40:38', '2022-12-15 09:34:17', 5, 'Sambal Ikan Nga-Ngenin', '49000', 'upload\\sambelijo.png', 'Sambel Pedas Ikan Nga Ngenin, Sambel Hijau dipadu dengan Ikan Asin Goreng ! wahh itu pasti Enak bangettt deh ! Sambel ini merupakan sambal yang bikin kamu kebayang terus karena harum nya dari Sambel Hijau dan nikmat nya Ikan asin Goreng. Makan Sambel dengan sensasi CRUNCHY Ikan Asin !! Makanan kalian pasti terasa Sangat Nikmat !  Sambel ini sangat cocok dengan berbagai jenis tipe makanan yang akan kalian makan. Mudah untuk dibawa dan dipakai untuk makanan apa pun sesuai dengan selera kita !  Dengan menggunakan Botol Kaca sangat mendukung untuk di bawa kemana mana atau berpergian karena bahan nya yang tahan dengan kondisi ruangan.'),
(7, '2022-12-02 14:41:16', '2022-12-15 09:36:38', 6, 'Sambal Teri-Ngat Kamu', '54000', 'upload\\sambelteri.png', 'Bahan Premium, Rasa Bikin “Teringat” Terus  Dibuat dengan Ikan Teri Nasi (Teri Medan) yang dipilih dengan dengan standar tinggi untuk menciptakan rasa yang berkesan dilidah kamu. Diolah dengan resep keluarga yang sudah diuji coba selama 9 bulan untuk menghasilkan rasa yang bikin kamu “Teringat” terus.  Kelezatan Yang Bikin Kenangan Bukan rahasia kalau nasi dan Teri Nasi saja sudah sangat lezat. Bagaimana jika Teri Nasi / Teri Medan ini diolah menjadi sambel dengan perpaduan rasa gurih dan pedas yang pas? Apapun makanan-nya, ini lah teman-nya.'),
(8, '2022-12-02 14:41:53', '2022-12-15 09:34:35', 7, 'Sambal Tuna Asap Sedap Mantap', '49000', 'upload\\sambeltuna.png', 'Ikan Tuna yang sangat premium yang sudah di asap hingga sangat harum, lalu dikombinasikan dengan Sambel dan bumbu Khas Eatsambel, Menciptakan sensasi sambal yang sangat meresap dengan aroma Tuna Asap.'),
(9, '2022-12-02 14:42:31', '2022-12-15 09:25:28', 8, 'Set 3 Sambal Jagoan', '138000', 'upload\\sambeltigajagoan.png', 'Set Sambel Jagoan ini terdiri dari 3 varian Eatsambel yang masing-masing rasa mempunyai ciri khas dan rasa tersendiri. Selain bisa menjadi teman makan seru Kamu. Masalah aroma dan pedas sudah menjadi andalan untuk si para Jagoan. Jagoan selalu bikin kamu teriak “PEDESNYA NGACO”. Kamu juga bisa memberikan 3 Sambel jagoan  yang Super Enak ini untuk teman atau kerabat kamu, karena khusus untuk paket ini, kami lengkapi dengan packaging keren agar bisa dijadikan sebagai hadiah untuk teman maupun keluarga kalian.'),
(11, '2022-12-02 23:54:22', '2022-12-16 03:25:28', 9, 'Set 5 Varian EatSambal', '239000', 'upload\\sambellimavarian.png', 'Set / Paket Terlengkap di Eatsambel!!  Mengapa? Karena kalian bisa menikmati semua varian Eatsambel dalam satu Paket ini! PASTINYA DENGAN HARGA SPESIAL!!!  So buat kalian yang penasaran untuk semua Varian Eatsambel dan ingin mencoba semuanya, Paket ini sangat cocok untuk kalian loh !  Isi Varian di dalam Set ini adalah : 1. Sambel Cumi Ciamik 2. Sambel Geprek Pedes Ngaco 3. Sambel Ijo Ikan Ngangenin 4. Sambel Tuna Asap Sedap Mantap 5. Cakalang Candu Suir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokproduks`
--

CREATE TABLE `stokproduks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok_produk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stokproduks`
--

INSERT INTO `stokproduks` (`id`, `created_at`, `updated_at`, `id_produk`, `nama_produk`, `stok_produk`) VALUES
(1, '2022-12-02 14:50:03', '2022-12-02 14:50:03', 1, 'Sambal Ayam Suwir Icikiwir', 10),
(2, '2022-12-02 14:50:29', '2022-12-02 14:50:29', 2, 'Sambal Cakalang Candu', 10),
(3, '2022-12-02 14:50:42', '2022-12-02 14:50:42', 3, 'Sambal Cumi Ciamik', 10),
(4, '2022-12-02 14:50:54', '2022-12-02 14:50:54', 4, 'Sambal Geprek Pedes Ngaco', 10),
(5, '2022-12-02 14:51:08', '2022-12-02 14:51:08', 5, 'Sambal Ikan Nga-Ngenin', 10),
(6, '2022-12-02 14:51:24', '2022-12-02 14:51:24', 6, 'Sambal Teri-Ngat Kamu', 10),
(7, '2022-12-02 14:51:49', '2022-12-02 14:51:49', 7, 'Sambal Tuna Asap Sedap Mantap', 10),
(8, '2022-12-02 14:52:18', '2022-12-02 14:52:18', 8, 'Set 3 Sambal Jagoan', 10),
(9, '2022-12-02 14:52:28', '2022-12-02 14:52:28', 9, 'Set 5 Varian EatSambal', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vpemesanan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vpemesanan` (
`id_produk` int(11)
,`nama_produk` varchar(255)
,`harga` varchar(255)
,`id_pemesanan` varchar(255)
,`jumlah_produk` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vpemesanan`
--
DROP TABLE IF EXISTS `vpemesanan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpemesanan`  AS SELECT `pdk`.`id_produk` AS `id_produk`, `pdk`.`nama_produk` AS `nama_produk`, `pdk`.`harga` AS `harga`, `pms`.`id_pemesanan` AS `id_pemesanan`, `pms`.`jumlah_produk` AS `jumlah_produk` FROM (`produklists` `pdk` join `pemesanans` `pms` on(`pms`.`id_produk` = `pdk`.`id_produk`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produklists`
--
ALTER TABLE `produklists`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stokproduks`
--
ALTER TABLE `stokproduks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produklists`
--
ALTER TABLE `produklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `stokproduks`
--
ALTER TABLE `stokproduks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
