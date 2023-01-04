<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../layout/header.php";
include "../config/koneksi.php";
$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT a.nama_ekskul,b.nama_lengkap,c.*,count(d.id_santri) as jml FROM tbl_ekskul c INNER JOIN tbl_jns_ekskul a ON a.id_jns_ekskul=c.id_jns_ekskul INNER JOIN tbl_pengasuh b ON c.id_pengasuh=b.id_pengasuh LEFT JOIN tbl_detail_ekskul d ON c.id_ekskul=d.id_ekskul GROUP BY c.id_ekskul");
$rs = mysqli_fetch_assoc($query);
?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pd-2 mb-3 border-bottom">
	<hl class="h2">Form Data Ekskul</h1>
	</div>

	<!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380">
</canvas> -->

	<!-- <h4>Data Jadwal Kegiatan</h4> -->
<div class="table-responsive">
		<form action="simpan_ubah_ekskul.php" method="POST">
			<div class="col-6">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Nama Ekskul</label>
					<input type="text" name="nama_ekskul" value="<?=$rs['nama_ekskul']; ?>" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Nama Lengkap</label>
					<input type="text" name="nama_lengkap" value="<?=$rs['nama_lengkap']; ?>" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Jadwal</label>
					<input type="text" name="jadwal" value="<?=$rs['jadwal']; ?>" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Keterangan</label>
					<input type="text" name="keterangan" value="<?=$rs['keterangan']; ?>" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Jumlah</label>
					<input type="text" name="jml" value="<?=$rs['jml']; ?>" class="form-control">
				</div>
					
				
				</div>
				<input type="hidden" value="<?= $id; ?>" name="id_ekskul" id="">
				
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
