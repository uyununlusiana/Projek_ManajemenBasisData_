<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../layout/header.php";
include "../config/koneksi.php";
$sql = mysqli_query($koneksi, "SELECT tbl_pendaftaran.*,tbl_seleksi.id_seleksi,sum(tbl_seleksi.skor) as skor FROM tbl_pendaftaran LEFT JOIN tbl_seleksi ON tbl_pendaftaran.id_pendaftaran=tbl_seleksi.id_pendaftaran GROUP BY tbl_pendaftaran.id_pendaftaran");

?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pd-2 mb-3 border-bottom">
	<hl class="h2">Data Seleksi</h1>
	</div>
	<?php if (isset($_GET['pesan'])) : ?>
	 <div class="alert alert-success" role="alert">
	 	<?php echo $_GET['pesan']; ?>
	 </div>
	 	<?php endif; ?>
	<!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380">
</canvas> -->

	<!-- <h4>Data Jadwal Kegiatan</h4> -->
	<a href="frm_seleksi.php" class="btn btn-sm btn-primary"> Tambah Seleksi</button></a>
	<br> <br>
	<div class="table-responsive">
		<table class="table table-striped table-bordered display nowrap"id="excample" style="width: 100%">
			<thead class="table-light">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nama Lengkap</th>
					<th scope="col">Nama Ibu</th>
					<th scope="col">Nama Ayah</th>
					<th scope="col">Alamat</th>
					<th scope="col">Tlp/Hp</th>
					<th scope="col">Skor</th>
					<th scope="col">Ket</th>
					<th scope="col">Aksi</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no = 1;
				while ($rs = mysqli_fetch_assoc($sql)) : ?>
				<?php
					if ($rs['skor'] >= 250){
						$status = 'pointer-events : none'; 
					}
					?>
					<tr>
						<td><?= $no; ?></td>
						<td><?= $rs['nama_lengkap']; ?></td>
						<td><?= $rs['nama_ibu']; ?></td>
						<td><?= $rs['nama_ayah']; ?></td>
						<td><?= $rs['alamat_rumah']; ?></td>
						<td><?= $rs['no_tlp']; ?></td>
						<td><?= $rs['skor']; ?></td>

						<td>
						<a role="link" href="frm_seleksi.php?id=<?=$rs['id_pendaftaran']; ?>" class="btn btn-info btn-sm">Seleksi</a>
						<a role="link" href="terima_santri.php?id=<?=$rs['id_seleksi']; ?>" class="btn btn-success btn-sm">Terima</a>
						<a href="ubah_seleksi.php?id=<?= $rs['id_seleksi']; ?>" class="btn btn-primary btn-sm">Ubah</a>
						<a href="hapus_seleksi.php?id=<?= $rs['id_seleksi']; ?>" class="btn btn-denger btn-sm">Hapus</a>

					</td>
					</tr>
				<?php
				$no++;
			endwhile;
			?>
			</tbody>
		</table>
	</div>
	</main>
	<?php
	include "../layout/footer.php";
	?>
