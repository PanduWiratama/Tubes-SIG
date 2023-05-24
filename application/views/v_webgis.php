	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-dark bg-dark">
				<div class="panel-heading"> Pemetaan Lokasi Sekolah</div>
				<div class="panel-body">

					<div id="mapid" style="height: 500px;"></div>


				</div>
			</div>
		</div>
	</div>


	<script>
		navigator.geolocation.getCurrentPosition(function(location) {
			var latlng = new L.LatLng(location.coords.latitude, location.coords.longitude);

			//map view
			console.log(location.coords.latitude, location.coords.longitude);


			var mymap = L.map('mapid').setView([-0.912, 130.924], 8);

			L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
				maxZoom: 19,
				attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
			}).addTo(mymap);


			var icon_sekolah = L.icon({
				iconUrl: '<?= base_url('icon/sekolah.png') ?>',
				iconSize: [45, 50], // size of the icon
			});
			<?php foreach ($sekolah as $key => $value) { ?>
				L.marker([<?= $value->latitude ?>, <?= $value->longitude ?>], {
						icon: icon_sekolah
					}).addTo(mymap)
					.bindPopup("<img src='<?= base_url('gambar/' . $value->gambar) ?>' width='100%'>" +
						"<b>Nama Sekolah : <?= $value->nama_sekolah ?></b><br/>" +
						"Alamat : <?= $value->alamat ?></br>" +
						"Status : <?= $value->status_sekolah ?></br>" +
						"<a href='<?= base_url('webgis/detail/' . $value->id_sekolah) ?>' class='btn btn-sm btn-default'>Detail</a>" +
						"<a href='https://www.google.com/maps/dir/?api=1&origin=" +
						location.coords.latitude + "," + location.coords.longitude + "&destination=<?= $value->latitude ?>,<?= $value->longitude ?>' class='btn btn-sm btn-default' target='_blank'>Rute</a>");
			<?php } ?>

		});
	</script>
