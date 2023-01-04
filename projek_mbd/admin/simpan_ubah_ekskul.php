<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../config/koneksi.php";

$id_ekskul = $_POST['id_ekskul'];
$jadwal = $_POST['jadwal'];
$keterangan = $_POST['keterangan'];


$update_data = mysqli_query($koneksi, "UPDATE tbl_ekskul  set jadwal='$jadwal',keterangan='$keterangan' where id_ekskul=$id");


if ($update_data) {
	header('location:data_ekskul.php?pesan=Data Berhasil Disimpan');
} else {
	echo mysqli_error($koneksi);
	//header('location:data_ekskul.php?pesan=Data Gagal Disimpan');

}

