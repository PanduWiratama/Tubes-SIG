<?php

class Sekolah extends CI_Controller
{


	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_sekolah');
	}


	public function index()
	{
		$data = array(
			'title' => 'Data Sekolah',
			'sekolah' => $this->m_sekolah->tampil(),
			'isi'	=> 'v_datasekolah'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function input()
	{
		$this->user_login->cek_login();
		$this->form_validation->set_rules('nama_sekolah', 'Nama Sekolah', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('kepsek', 'Kepala Sekolah', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('alamat', 'Alamat', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('kelurahan', 'Kelurahan', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('status_sekolah', 'Status Sekolah', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('latitude', 'Latitude', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('longitude', 'Longitude', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));

		if ($this->form_validation->run() == TRUE) {
			$config['upload_path']          = './gambar/';
			$config['allowed_types']        = 'gif|jpg|png|jpeg|ico';
			$config['max_size']             = 2000;
			$this->upload->initialize($config);
			if (!$this->upload->do_upload('gambar')) {
				$data = array(
					'title' => 'Input Data Sekolah',
					'error_upload' => $this->upload->display_errors(),
					'isi'	=> 'v_input_datasekolah'
				);
				$this->load->view('layout/v_wrapper', $data, FALSE);
			} else {
				$upload_data = array('uploads' => $this->upload->data());
				$config['image_library'] = 'gd2';
				$config['source_image'] = './gambar/' . $upload_data['uploads']['file_name'];
				$this->load->library('image_lib', $config);
				$data = array(
					'nama_sekolah' 	=> $this->input->post('nama_sekolah'),
					'kepsek' 		=> $this->input->post('kepsek'),
					'alamat' 		=> $this->input->post('alamat'),
					'kelurahan' 	=> $this->input->post('kelurahan'),
					'kecamatan' 	=> $this->input->post('kecamatan'),
					'status_sekolah' => $this->input->post('status_sekolah'),
					'latitude'		=> $this->input->post('latitude'),
					'longitude'		=> $this->input->post('longitude'),
					'gambar'		=>  $upload_data['uploads']['file_name'],
				);
				$this->m_sekolah->simpan($data);
				$this->session->set_flashdata('pesan', 'Data Berhasil Disimpan');
				redirect('sekolah/input');
			}
		}

		$data = array(
			'title' => 'Input Data Sekolah',
			'isi'	=> 'v_input_datasekolah'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function edit($id_sekolah)
	{
		$this->user_login->cek_login();
		$this->form_validation->set_rules('nama_sekolah', 'Nama Sekolah', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('kepsek', 'Kepala Sekolah', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('alamat', 'Alamat', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('kelurahan', 'Kelurahan', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('kecamatan', 'Kecamatan', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('status_sekolah', 'Status Sekolah', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('latitude', 'Latitude', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));
		$this->form_validation->set_rules('longitude', 'Longitude', 'required', array(
			'required' => '%s Harus Diisi !!!'
		));

		if ($this->form_validation->run() == TRUE) {
			$config['upload_path']          = './gambar/';
			$config['allowed_types']        = 'gif|jpg|png|jpeg|ico';
			$config['max_size']             = 2000;
			$this->upload->initialize($config);
			if (!$this->upload->do_upload('gambar')) {
				$data = array(
					'title' => 'Edit Data Sekolah',
					'error_upload' => $this->upload->display_errors(),
					'sekolah' => $this->m_sekolah->detail($id_sekolah),
					'isi'	=> 'v_edit_datasekolah'
				);
				$this->load->view('layout/v_wrapper', $data, FALSE);
			} else {
				//edit dengan ubah gambar
				$upload_data = array('uploads' => $this->upload->data());
				$config['image_library'] = 'gd2';
				$config['source_image'] = './gambar/' . $upload_data['uploads']['file_name'];
				$this->load->library('image_lib', $config);
				$data = array(
					'id_sekolah'	=> $id_sekolah,
					'nama_sekolah' 	=> $this->input->post('nama_sekolah'),
					'kepsek' 		=> $this->input->post('kepsek'),
					'alamat' 		=> $this->input->post('alamat'),
					'kelurahan' 	=> $this->input->post('kelurahan'),
					'kecamatan' 	=> $this->input->post('kecamatan'),
					'status_sekolah' => $this->input->post('status_sekolah'),
					'latitude'		=> $this->input->post('latitude'),
					'longitude'		=> $this->input->post('longitude'),
					'gambar'		=>  $upload_data['uploads']['file_name'],
				);
				$this->m_sekolah->edit($data);
				$this->session->set_flashdata('pesan', 'Data Berhasil Diedit');
				redirect('sekolah');
			}
			//edit tanpa ubah gambar
			$data = array(
				'nama_sekolah' 	=> $this->input->post('nama_sekolah'),
				'kepsek' 		=> $this->input->post('kepsek'),
				'alamat' 		=> $this->input->post('alamat'),
				'kelurahan' 	=> $this->input->post('kelurahan'),
				'kecamatan' 	=> $this->input->post('kecamatan'),
				'status_sekolah' => $this->input->post('status_sekolah'),
				'latitude'		=> $this->input->post('latitude'),
				'longitude'		=> $this->input->post('longitude'),

			);
			$this->m_sekolah->edit($data);
			$this->session->set_flashdata('pesan', 'Data Berhasil Diedit');
			redirect('sekolah');
		}

		$data = array(
			'title' => 'Input Data Sekolah',
			'sekolah' => $this->m_sekolah->detail($id_sekolah),
			'isi'	=> 'v_edit_datasekolah'
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}

	public function hapus($id_sekolah)
	{
		$this->user_login->cek_login();
		$data = array('id_sekolah' => $id_sekolah);
		$this->m_sekolah->hapus($data);
		$this->session->set_flashdata('pesan', 'Data Berhasil Dihapus !!!');
		redirect('sekolah');
	}
}

/* End of file Controllername.php */
