<section class="widget-section padding">
	<div class="container">
		<div class="widget-wrap row">
			<div class="col-md-3 xs-padding">
				<div class="widget-content">
					<img src="<?= base_url(); ?>assets/img/logo/logo-white.png" alt="logo" width="200px">
					<ul class="social-icon">

						<li><a href="<?= $settings['social-facebook']->value; ?>" target="_blank"><i class="fab fa-facebook"></i></a></li>
						<li><a href="<?= $settings['social-instagram']->value; ?>" target="_blank"><i class="fab fa-instagram"></i></a></li>
						<li><a href="<?= $settings['social-youtube']->value; ?>" target="_blank"><i class="fab fa-youtube"></i></a></li>
						<li><a href="<?= $settings['social-tiktok']->value; ?>" target="_blank"><i class="fab fa-tiktok"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2 xs-padding">
				<div class="widget-content">
					<h3>Menu</h3>
					<ul class="widget-link">
						<li><a href="<?= base_url(); ?>page/detail/profil-dinas">Profil Dinas - updated</a></li>
						<li><a href="<?= base_url(); ?>page/detail/visi-misi">Visi Misi</a></li>
						<li><a href="<?= base_url(); ?>page/detail/struktur-organisasi">Struktur Organisasi</a></li>
						<li><a href="<?= base_url(); ?>services">Layanan</a></li>
						<li><a href="<?= base_url(); ?>post/list/berita">Berita</a></li>
						<li><a href="<?= base_url(); ?>contact">Kontak</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 xs-padding">
				<div class="widget-content">
					<h3>Link Terkait</h3>
					<ul class="widget-link">
						<li><a href="http://indonesia.go.id/" target="_blank">Republik Indonesia</a></li>
						<li><a href="https://setneg.go.id/" target="_blank">Sekretariat Negara</a></li>
						<li><a href="http://indonesia.go.id/" target="_blank">Sekretariat Kabinet</a></li>
						<li><a href="https://kemensos.go.id/" target="_blank">Kementerian Sosial RI</a></li>
						<li><a href="https://setkab.go.id/" target="_blank">Pemerintah Provinsi Sulut</a></li>
						<li><a href="http://manadokota.go.id/" target="_blank">Pemerintah Kota Manado</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 xs-padding">
				<div class="widget-content">
					<h3>Layanan Pengaduan</h3>
					<ul class="address">
						<li><i class="ti-email"></i> <?= $settings['contact-email']->value; ?></li>
						<li><i class="ti-mobile"></i> <?= $settings['contact-phone']->value; ?></li>
						<li><i class="ti-world"></i> <?= $settings['contact-website']->value; ?></li>
						<li><i class="ti-location-pin"></i> <?= $settings['contact-address']->value; ?></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section><!-- ./Widget Section -->
<footer class="footer-section">
	<div class="container">
		<div class="row">
			<div class="col-md-6 sm-padding">
				<div class="copyright">&copy; Copyrights <?= date('Y'); ?>. <a class="text-white" target="_blank" href="https://manadokota.go.id/"><b>Pemerintah Kota Manado</b></a></div>
			</div>
			<div class="col-md-6 sm-padding">
				<ul class="footer-social">
					<li><a href="#">Orders</a></li>
					<li><a href="#">Terms</a></li>
					<li><a href="#">Report Problem</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer><!-- /Footer Section -->

<a data-scroll href="#header" id="scroll-to-top"><i class="arrow_up"></i></a>
