<?php
session_start();
if ($_SESSION['status'] != "sudah_login") {
	// melakukan pengalihan
	header("location:../login/login.php");
}
include "../layout/header.php";
include "../config/koneksi.php";
$id = $_GET['id'];
$query_1 = mysqli_query($koneksi, "SELECT id_pendaftaran,nama_lengkap,nama_ibu,alamat_rumah,no_tlp FROM tbl_pendaftaran where id_pendaftaran=$id");
$query_2 = mysqli_query($koneksi, 'SELECT * from tbl_jns_seleksi');
$rs_1 = mysqli_fetch_assoc($query_1);
?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pd-2 mb-3 border-bottom">
	<hl class="h2">Form Seleksi Calon Santri</h1>

	</div>
	
	<div class="row">
	<div class="table-responsive">
		<form action="simpan_seleksi.php" method="POST">
			
				<div class="mb-3">
					<div class="table-responsive">
						<table class="table tabel-striped table-bordered display nowrap" id="excample" style="width: 100">
						<tr>
							<td>Nama Lengkap</td>
							<td><?= $rs_1['nama_lengkap']; ?></td>
						</tr>
						<tr>
							<td>Nama ibu</td>
							<td><?= $rs_1['nama_ibu']; ?></td>
						</tr>
						<tr>
							<td>Alamat Rumah</td>
							<td><?= $rs_1['alamat_rumah']; ?></td>
						</tr>
						<tr>
							<td>No Tlp/Hp</td>
							<td><?= $rs_1['no_tlp']; ?></td>
						</tr>
					</table>
				</div>
			</div>
				<div class="mb-6">
					<div class="table-responsive">
						<table class="table tabel-striped table-bordered display nowrap" id="excample" style="width: 100">
					<tr>
						<th>Nama Seleksi</th>
						<th>Skor</th>
						<th>Keterangan</th>
					</tr>
					<?php while ($rs_2 = mysqli_fetch_assoc($query_2)) : ?>
						<tr>
							<td><?= $rs_2['nama_seleksi']; ?></td>
							<td>
								<input type="text" name="skor[]" class="form-control">
							</td>
							<td>
								<input type="text" name="keterangan[]" class="form-control">
							</td>
							<input type="hidden" name="id_jns_seleksi[]" value="<?= $rs_2['id_jns_seleksi']; ?>">
							<input type="hidden" name="id_pendaftaran[]" value="<?= $rs_1['id_pendaftaran']; ?>">
						</tr>
					<?php
					endwhile;
					?>
				</table>
			</div>
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