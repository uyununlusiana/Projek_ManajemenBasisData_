<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../layout/header.php";
include "../config/koneksi.php";

?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pd-2 mb-3 border-bottom">
	<hl class="h2">Form Data Pengasuh</h1>

	</div>
	
	<!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380">
</canvas> -->

	<!-- <h4>Data Jadwal Kegiatan</h4> -->
	<div class="table-responsive">
		<form action="simpan_data_pengasuh.php" method="POST">
			<div class="col-6">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Nama Lengkap</label>
					<input type="text" name="nama_lengkap" class="form-control">	
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextareal" class="form-label">Alamat</label>
					<input type="text" name="alamat" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextareal" class="form-label">E-mail</label>
					<input type="text" name="email" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextareal" class="form-label">No Tlp/Hp</label>
					<input type="text" name="no_tlp" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextareal" class="form-label">Kompetensi</label>
					<select name="kompetensi" class="form-control" id="">
						<option value=""> Pilih Kompetensi</option>
						<option value="Baca Kitab">Baca Kitab</option>
						<option value="Tahfiz">Tahfiz</option>
						<option value="Olah Raga">Olah Raga</option>
						<option value="English">English</option>
					</select>
				</div>

			<div class="mb-3">
				<button type="submit" class="btn btn-sm btn-primary">Simpan</button>
			</div>
		</div>
		</form>
	</div>
</main>
<?php
include "../layout/footer.php";
?>