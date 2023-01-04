<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../config/koneksi.php";

$nama= $_POST['nama_lengkap'];
$alamat = $_POST['alamat'];
$email = $_POST['email'];
$no_tlp= $_POST['no_tlp'];
$kompetensi= $_POST['kompetensi'];

$insert_data = mysqli_query($koneksi, "INSERT INTO tbl_pengasuh (nama_lengkap,alamat,email,no_tlp,kompetensi) Values
		('$nama','$alamat','$email','$no_tlp','$kompetensi')");
if ($insert_data) {
	header('location:data_pengasuh.php?pesan=Data Berhasil Disimpan');
} else {
	header('location:data_pengasuh.php?pesan=Data Gagal Disimpan');

}