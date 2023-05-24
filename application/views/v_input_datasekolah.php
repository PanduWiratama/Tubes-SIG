<div class="col-sm-7">
	<div class="panel panel-primary">
		<div class="panel-heading">
			Lokasi Sekolah
		</div>
		<div class="panel-body">

			<div id="mapid" style="height: 500px;"></div>


		</div>
	</div>
</div>



<div class="col-sm-5">
	<div class="panel panel-primary">
		<div class="panel-heading">
			Input Data
		</div>
		<div class="panel-body">
			<?php
			//notifikasi gagal upload Gambar
			if (isset($error_upload)) {
				echo '<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>' . $error_upload . '</div>';
			}
			//validasi data tidak boleh kosong
			echo validation_errors('<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>', '</div>');

			//notifikasi pesan data berhasil disimpanasi
			if ($this->session->flashdata('pesan')) {
				echo '<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>';
				echo $this->session->flashdata('pesan');
				echo '</div>';
			}

			echo form_open_multipart('sekolah/input');
			?>

			<div class="form-group">
				<label>Nama Sekolah</label>
				<input name="nama_sekolah" placeholder="Nama Sekolah" value="<?= set_value('nama_sekolah') ?>" class="form-control" />
			</div>
			
			<div class="form-group">
				<label>Kepala Sekolah</label>
				<input name="kepsek" placeholder="Kepala Sekolah" value="<?= set_value('kepsek') ?>" class="form-control" />
			</div>

			<div class="form-group">
				<label>Alamat</label>
				<input name="alamat" placeholder="Alamat" value="<?= set_value('alamat') ?>" class="form-control" />
			</div>

			<div class="form-group">
				<label>Kelurahan</label>
				<input name="kelurahan" placeholder="Kelurahan" value="<?= set_value('kelurahan') ?>" class="form-control" />
			</div>

			<div class="form-group">
				<label>Kecamatan</label>
				<input name="kecamatan" placeholder="Kecamatan" value="<?= set_value('kecamatan') ?>" class="form-control" />
			</div>

			<div class="form-group">
				<label>Status Sekolah</label>
				<select name="status_sekolah" class="form-control">
					<option value="">--Pilih Status Sekolah--</option>
					<option value="Negri">Negri</option>
					<option value="Swasta">Swasta</option>
				</select>
			</div>

			<div class="form-group">
				<label>Latitude</label>
				<input id="Latitude" name="latitude" placeholder="Latitude" value="<?= set_value('latitude') ?>" class="form-control" >
			</div>

			<div class="form-group">
				<label>Longitude</label>
				<input id="Longitude" name="longitude" placeholder="Longitude" value="<?= set_value('longitude') ?>" class="form-control" >
			</div>

			<div class="form-group">
				<label>Gambar</label>
				<input type="file" name="gambar" class="form-control" required>
			</div>

			<div class="form-group">
				<label></label>
				<button type="submit" class="btn btn-sm btn-primary">Simpan</button>
				<button type="reset" class="btn btn-sm btn-success">Reset</button>
			</div>



			<?php echo form_close(); ?>
		</div>
	</div>
</div>

<script>
	var curLocation=[0,0];
	if (curLocation[0]==0 && curLocation[1]==0) {
		curLocation =[-0.8782, 130.7847];	
	}

	var mymap = L.map('mapid').setView([-0.912, 130.924], 8);

	L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
		maxZoom: 19,
		attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
	}).addTo(mymap);

	mymap.attributionControl.setPrefix(false);
	var marker = new L.marker(curLocation, {
		draggable:'true'
	});

	marker.on('dragend', function(event) {
	var position = marker.getLatLng();
	marker.setLatLng(position,{
		draggable : 'true'
		}).bindPopup(position).update();
		$("#Latitude").val(position.lat);
		$("#Longitude").val(position.lng).keyup();
	});

	$("#Latitude, #Longitude").change(function(){
		var position =[parseInt($("#Latitude").val()), parseInt($("#Longitude").val())];
		marker.setLatLng(position, {
		draggable : 'true'
		}).bindPopup(position).update();
		mymap.panTo(position);
	});
	mymap.addLayer(marker);
</script>
