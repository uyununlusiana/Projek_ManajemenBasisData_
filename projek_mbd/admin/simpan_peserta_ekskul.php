<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../config/koneksi.php";
$id_santri = $_POST['id_santri'];
$id_ekskul = $_POST['id_ekskul'];

// $count= count(array)
$data = array();
for ($i = 0; $i < count($id_santri); $i++) {
	$insert_data = mysqli_query($koneksi, "INSERT INTO tbl_detail_ekskul (id_ekskul,id_santri) VALUES 
		('$id_ekskul[$i]','$id_santri[$i]')");
	//$data = array('id_ekskul,'id_santri'=> $id_santri);
}
//print_r($data);

if ($insert_data) {
	header('location:data_ekskul.php?pesan=Data Berhasil Disimpan');
} else {
	//echo mysqli_error($koneksi);
	header('location:data_ekskul.php?pesan=Data Gagal Disimpan');

}