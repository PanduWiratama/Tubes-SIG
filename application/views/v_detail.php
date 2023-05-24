<div class="row">
	<div class="col-sm-6">
		<div class="panel panel-primary">
			<div class="panel-heading"> Lokasi Sekolah</div>
			<div class="panel-body">

				<div id="mapid" style="height: 500px;"></div>

			</div>
		</div>
	</div>

	<div class="col-sm-6">
		<div class="panel panel-primary">
			<div class="panel-heading"> Gambar Sekolah</div>
			<div class="panel-body">


				<img src="<?= base_url('gambar/' . $sekolah->gambar) ?>" width="100%" height="500px">


			</div>
		</div>
	</div>

	<div class="col-sm-12">
		<div class="panel panel-primary">
			<div class="panel-heading"> Data Sekolah</div>
			<div class="panel-body">

				<table class="table table-bordered">
					<thead>
						<tr>
							<th width="200px">Nama Sekolah</th>
							<th width="50px">:</th>
							<td><?= $sekolah->nama_sekolah ?></td>
						</tr>
						<tr>
							<th>Kepala Sekolah</th>
							<th>:</th>
							<td><?= $sekolah->kepsek ?></td>
						</tr>
						<tr>
							<th>Status Sekolah</th>
							<th>:</th>
							<td><?= $sekolah->status_sekolah ?></td>
						</tr>
						<tr>
							<th>Alamat Sekolah</th>
							<th>:</th>
							<td><?= $sekolah->alamat ?></td>
						</tr>
						<tr>
							<th>Kelurahan</th>
							<th>:</th>
							<td><?= $sekolah->kelurahan ?></td>
						</tr>
						<tr>
							<th>Kecamatan</th>
							<th>:</th>
							<td><?= $sekolah->kecamatan ?></td>
						</tr>
						<tr>
							<th>Latitude</th>
							<th>:</th>
							<td><?= $sekolah->latitude ?></td>
						</tr>
						<tr>
							<th>Longitude</th>
							<th>:</th>
							<td><?= $sekolah->longitude ?></td>
						</tr>
					</thead>
				</table>

			</div>
		</div>
	</div>

</div>


<script>
	var mymap = L.map('mapid').setView([<?= $sekolah->latitude ?>, <?= $sekolah->longitude ?>], 20);

	L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
		maxZoom: 19,
		attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
	}).addTo(mymap);

	var icon_sekolah = L.icon({
		iconUrl: '<?= base_url('icon/sekolah.png') ?>',
		iconSize: [45, 50], // size of the icon
	});
	L.marker([<?= $sekolah->latitude ?>, <?= $sekolah->longitude ?>], {
			icon: icon_sekolah
		}).addTo(mymap)
		.bindPopup("<img src='<?= base_url('gambar/' . $sekolah->gambar) ?>' width='100%'>" +
			"<b>Nama Sekolah : <?= $sekolah->nama_sekolah ?></b><br/>" +
			"Alamat : <?= $sekolah->alamat ?></br>" +
			"Status : <?= $sekolah->status_sekolah ?></br>").openPopup();;
</script>
