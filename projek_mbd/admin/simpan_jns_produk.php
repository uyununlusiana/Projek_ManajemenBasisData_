<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/user.php");
}
include "../config/koneksi.php";

$nama = $_POST['nama_produk'];
$insert_data = mysqli_query($koneksi, "INSERT INTO jns_produk(nama_produk) values('$nama')");
if ($insert_data) {
	header('location:data_jns_produk.php?pesan=Data Berhasil Disimpan');
} else {
	header('location:data_jns_produk.php?pesan=Data Gagal Disimpan');

} 
