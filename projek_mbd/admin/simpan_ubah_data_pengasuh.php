<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../config/koneksi.php";
$id= $_POST['id_pengasuh'];
$nama= $_POST['nama_lengkap'];
$alamat = $_POST['alamat'];
$email = $_POST['email'];
$no_tlp= $_POST['no_tlp'];
$kompetensi= $_POST['kompetensi'];

$update_data = mysqli_query($koneksi, "UPDATE tbl_pengasuh set nama_lengkap='$nama',alamat='$alamat',email='$email',no_tlp='$no_tlp',kompetensi='$kompetensi' where id_pengasuh=$id"); 
if ($update_data) {
	header('location:data_pengasuh.php?pesan=Data Berhasil Di Ubah');
} else {
	header('location:data_pengasuh.php?pesan=Data Gagal Di Ubah');

}