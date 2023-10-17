<div class="site-preloader-wrap">
	<div class="spinner"></div>
</div><!-- Preloader -->

<header id="header" class="header-section">
	<div class="top-header">
		<div class="container">
			<div class="top-content-wrap row">
				<div class="col-sm-8">
					<ul class="left-info">
						<li><a href="mailto:<?= $settings['contact-email']->value; ?>" target="_blank"><i class="ti-email"></i> <?= $settings['contact-email']->value; ?></a></li>
						<li><a href="tel:<?= $settings['contact-phone']->value; ?>" target="_blank"><i class="ti-mobile"></i> <?= $settings['contact-phone']->value; ?></a></li>
					</ul>
				</div>
				<div class="col-sm-4 d-none d-md-block">
					<ul class="right-info">
						<li><a href="<?= $settings['social-facebook']->value; ?>" target="_blank"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="<?= $settings['social-instagram']->value; ?>" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
						<li><a href="<?= $settings['social-youtube']->value; ?>" target="_blank"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
						<li><a href="<?= $settings['social-tiktok']->value; ?>" target="_blank"><i class="fab fa-tiktok" aria-hidden="true"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom-header">
		<div class="container">
			<div class="bottom-content-wrap row">
				<div class="col-sm-4">
					<div class="site-branding">
						<a href="<?= base_url(); ?>"><img src="<?= base_url(); ?>assets/img/logo/logo-diskop.png" width="60%" alt="Brand"></a>
					</div>
				</div>





				<div class="col-sm-8 text-right">



					<!-- test dropdown -->



					<nav class="navbar navbar-expand-lg navbar-light  " id="main_navbar">


						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-auto">

								<!-- beranda -->
								<li class="nav-item  ">
									<a class="nav-link" href="<?= base_url(); ?>">Beranda <span class="sr-only">(current)</span></a>
								</li>

								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										WOKU
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" href="<?= base_url(); ?>post/list/berita">Berita</a></li>
										<li><a class="dropdown-item" href="<?= base_url(); ?>post/list/kegiatan">Kegiatan</a></li>
										<li><a class="dropdown-item" href="<?= base_url(); ?>post/list/informasi">Informasi</a></li>
										<div class="dropdown-divider"></div>



										<li class="nav-item dropdown">
											<a class="dropdown-item dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												Konsultasi
											</a>
											<ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
												<li><a class="dropdown-item" href="https://wa.me/+6282187948658" target="_blank">Bid. Koperasi</a></li>
												<li><a class="dropdown-item" href="https://wa.me/+6282187948658" target="_blank">Bid. Pembiyaan & Simpan Pinjam</a></li>
												<li><a class="dropdown-item" href="https://wa.me/+6282187948658" target="_blank">Bid. UMKM</a></li>
												<div class="dropdown-divider"></div>
												<li><a class="dropdown-item" href="https://wa.me/+6282187948658" target="_blank">Pengaduan</a></li>
											</ul>

										</li>
									</ul>
								</li>

								<!-- Tentang Kami (Single Level) -->
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Tentang Kami
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" href="<?= base_url(); ?>page/detail/profil-dinas">Profil Dinas</a></li>
										<li><a class="dropdown-item" href="<?= base_url(); ?>page/detail/visi-misi">Visi Misi</a></li>
										<li><a class="dropdown-item" href="<?= base_url(); ?>page/detail/struktur-organisasi">Struktur Organisasi</a></li>
									</ul>
								</li>

								<!-- Multilevel -->






							</ul>


						</div>
					</nav>








					<!-- end dropdown -->


					</ul>
				</div>
			</div>
		</div>
	</div>
</header><!-- /Header Section -->

<div class="header-height"></div>
