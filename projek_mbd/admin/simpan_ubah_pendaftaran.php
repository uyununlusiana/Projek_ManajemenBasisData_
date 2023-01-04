<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../config/koneksi.php";
$id= $_POST['id_pendaftaran'];
$nama= $_POST['nama_lengkap'];
$tmp_lahir = $_POST['tmp_lahir'];
$tgl_lahir = $_POST['tgl_lahir']
$alamat = $_POST['alamat'];
$nama_ibu= $_POST['nama_ibu'];
$no_tlp= $_POST['no_tlp'];


$update_data = mysqli_query($koneksi, "UPDATE tbl_pendaftaran set nama_lengkap='$nama',tmp_lahir='$tmp_lahir',tgl_lahir='$tgl_lahir',alamat='$alamat',nama_ibu='$nama_ibu',no_tlp='$no_tlp', where id_pendaftaran=$id"); 
if ($update_data) {
	header('location:data_pendaftaran.php?pesan=Data Berhasil Di Ubah');
} else {
	header('location:data_pendaftaran.php?pesan=Data Gagal Di Ubah');

}