<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../layout/header.php";
include "../config/koneksi.php";
$query_1 = mysqli_query($koneksi, "SELECT * from tbl_jns_ekskul");
$query_2 = mysqli_query($koneksi, "SELECT * from tbl_pengasuh");
?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pd-2 mb-3 border-bottom">
	<hl class="h2">Form Data Ekskul</h1>
	</div>

	<!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380">
</canvas> -->

	<!-- <h4>Data Jadwal Kegiatan</h4> -->
<div class="table-responsive">
		<form action="simpan_data_ekskul.php" method="POST">
			<div class="col-6">
				<div class="mb-3">
					<label for="excampleFormControlInput1" class="form-label">Jenis Ekskul</label>
					<select name="id_jns_ekskul" class="form-control" id="">
					<option value="">Pilih Jenis Ekskul</option>
					<?php	
					while ($rs_1 = mysqli_fetch_assoc($query_1)) : ?>
					?>
					<option value="<?=$rs_1['id_jns_ekskul']; ?>"><?=$rs_1['nama_ekskul']; ?></option>
				<?php endwhile; ?>
			</select>
		</div>
				<div class="mb-3">
					<label for="excampleFormControlTextarea1" class="form-label">Pembimbing</label>
					<select name="id_pengasuh" class="form-control" id="">
					<option value="">Pilih Pembimbing</option>
					<?php	
					while ($rs_2 = mysqli_fetch_assoc($query_2)) : ?>
					?>
					<option value="<?=$rs_2['id_pengasuh']; ?>"><?= $rs_2['nama_lengkap']; ?></option>
				<?php endwhile; ?>
			</select>
		</div>
				<div class="mb-3">
					<label for="excampleFormControlTextarea1" class="form-label">Jadwal</label>
					<input type="text" name="jadwal" class="form-control">
				</div>
				<div class="mb-3">
					<label for="excampleFormControlTextarea1" class="form-label">Keterangan</label>
					<input type="text" name="keterangan" class="form-control">
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
	