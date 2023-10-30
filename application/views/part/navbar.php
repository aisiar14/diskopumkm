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
					<ul id="mainmenu" class="nav navbar-nav nav-menu">
						<li class="<?= ($title['parent'] == "Beranda") ? "active" : ""; ?>">
							<a href="<?= base_url(); ?>">Beranda</a>
						</li>
						<li class="<?= ($title['parent'] == "Tentang Kami") ? "active" : ""; ?>">
							<a href="#">Tentang Kami</a>
							<ul>
								<li>
									<a href="<?= base_url(); ?>page/detail/profil-dinas">Profil Dinas</a>
								</li>
								<li>
									<a href="<?= base_url(); ?>page/detail/visi-misi">Visi Misi</a>
								</li>
								<li>
									<a href="<?= base_url(); ?>page/detail/struktur-organisasi">Struktur Organisasi</a>
								</li>
							</ul>
						</li>

						<!-- <li class="<?= ($title['parent'] == "Layanan") ? "active" : ""; ?>">
							<a href="<?= base_url(); ?>service">Layanan</a>
						</li> -->
						<li class="<?= ($title['parent'] == "Artikel") ? "active" : ""; ?>">
							<a href="#">Artikel</a>
							<ul>
								<li>
									<a href="<?= base_url(); ?>post/list/berita">Berita</a>
								</li>
								<li>
									<a href="<?= base_url(); ?>post/list/kegiatan">Kegiatan</a>
								</li>
								<li>
									<a href="<?= base_url(); ?>post/list/informasi">Informasi</a>
								</li>
							</ul>
						</li>
						<li class="<?= ($title['parent'] == "Konsultasi") ? "active" : ""; ?>">
							<a href="#">WOKU</a>
							<ul>
								<li>
									<a href="https://wa.me/+6289618460700" target="_blank">Bid. Koperasi</a>
								</li>
								<li>
									<a href="https://wa.me/+6289618459966 " target="_blank">Bid. Pembiyaan & Simpan Pinjam</a>
								</li>
								<li>
									<a href="https://wa.me/+6289618460050" target="_blank">Bid. UMKM</a>

								</li>
								<li>
									<a href="https://wa.me/+6289618459900" target="_blank">Pengaduan</a>

								</li>
							</ul>
						</li>

						<!-- isi sini -->
						<!-- new bar-->
					</ul>
				</div>
			</div>
		</div>
	</div>
</header><!-- /Header Section -->

<div class="header-height"></div>