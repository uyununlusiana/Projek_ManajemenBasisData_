<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../config/koneksi.php";

$nama = $_POST['nama_ekskul'];
$insert_data = mysqli_query($koneksi, "INSERT INTO tbl_jns_ekskul(nama_ekskul) values('$nama')");
if ($insert_data) {
	header('location:data_jns_ekskul.php?pesan=Data Berhasil Disimpan');
} else {
	header('location:data_jns_ekskul.php?pesan=Data Gagal Disimpan');

} 
