<div id="mapid" style="height: 500px;"></div>
<script>
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
			.bindPopup("<b>Nama Sekolah : <?= $value->nama_sekolah ?></b><br/>" +
				"Alamat : <?= $value->alamat ?></br>" +
				"Status : <?= $value->status_sekolah ?></br>" );
	<?php } ?>
</script>
