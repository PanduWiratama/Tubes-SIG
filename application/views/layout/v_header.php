<div id="wrapper bg-dark">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle bg-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Gis Sekolah</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Tanggal : <?= date('d M Y') ?>

		<?php if ($this->session->userdata('username')=="") { ?>
			<a href="<?= base_url('login') ?>" class="btn btn-danger square-btn-adjust">Login</a>	
		<?php }else{ ?>
			<a href="<?= base_url('login/logout') ?>" class="btn btn-danger square-btn-adjust">Logout</a>	
		<?php } ?>
		</div>
		</nav>   
				<!-- /. NAV TOP  -->
