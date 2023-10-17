<!doctype html>
<?php $this->load->view('part/head'); ?>

<body>

	<?php $this->load->view('part/navbar'); ?>

	<!-- /#slider-Section -->
	<section class="slider-section">
		<div class="slider-wrapper">
			<div id="main-slider" class="nivoSlider">
				<?php $no = 1;
				foreach ($sliders as $sd) : ?>
					<img src="<?= $settings['panel-url']->value; ?>assets/uploads/images/sliders/<?= $sd->image; ?>" alt="" title="#slider-caption-<?= $no; ?>" />
				<?php $no++;
				endforeach; ?>
			</div>

			<?php $no = 1;
			foreach ($sliders as $sd) : ?>
				<div id="slider-caption-<?= $no; ?>" class="nivo-html-caption slider-caption">
					<div class="display-table">
						<div class="table-cell">
							<div class="container">
								<div class="slider-text">
									<h1 class="wow cssanimation leFadeInRight sequence"><?= $sd->title; ?></h1>
									<p class="wow cssanimation fadeInTop" data-wow-delay="1s"><?= $sd->subtitle; ?></p>
									<?php if ($sd->link != null || $sd->link != "") : ?>
										<a href="<?= $sd->link; ?>" class="default-btn wow cssanimation fadeInBottom" data-wow-delay="0.8s"><?= $sd->link_title; ?></a>
									<?php endif; ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php $no++;
			endforeach; ?>
		</div>
	</section>

	<!-- /About Section -->
	<section class="about-section padding">
		<div class="container">
			<div class="row about-wrap">

				<div class="col-md-4 xs-padding">
					<div class="about-content">
						<img src="<?= base_url(); ?>assets/img/logo/logo.png" alt="logo dinsos image">

						<p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex magnam quos facere delectus adipisci. Nesciunt dolorum dolor in blanditiis exercitationem architecto laborum dolorem quidem praesentium reprehenderit eius quia repellendus dicta, aut libero obcaecati voluptate iste minus omnis at doloremque doloribus.</p>
						<a href="<?= base_url(); ?>page/detail/profil-dinas" class="default-btn">Selengkapnya</a>
					</div>
				</div>
				<div class="col-md-8 xs-padding">
					<div class="about-image">
						<img src="<?= base_url(); ?>assets/img/foto-dinsos.png" alt="foto dinsos">
					</div>
				</div>
			</div>
		</div>
	</section>



	<?php //$this->load->view('part/section/data_request');
	?>
	<?php //$this->load->view('part/section/popular_service'); 
	?>
	<?php $this->load->view('part/section/latest_news'); ?>


	<?php $this->load->view('part/foot'); ?>

	<?php if ($announcement != null) : ?>
		<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Pengumuman</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<?php if ($announcement->image != null && $announcement->image != "") : ?>
						<a href="<?= ($announcement->website != null && $announcement->website != "") ? $announcement->website : "#"; ?>" target="_blank" rel="noopener noreferrer">
							<img src="<?= $settings['panel-url']->value; ?>assets/uploads/images/announcement/<?= $announcement->image; ?>" width="100%" alt="">
						</a>
					<?php endif; ?>

					<div class="modal-body">
						<div class="p-2">
							<a href="<?= ($announcement->website != null && $announcement->website != "") ? $announcement->website : "#"; ?>" target="_blank" rel="noopener noreferrer">
								<h4 class="logo-text mt-3"><?= $announcement->title; ?></h4>
							</a>
							<p><?= $announcement->description; ?></p>

						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><?= $this->lang->line('close'); ?></button>
					</div>
				</div>
			</div>
		</div>
	<?php endif; ?>
	<?php $this->load->view('part/script'); ?>
	<?php if ($announcement != null) : ?>
		<script type="text/javascript">
			$(window).on('load', function() {
				$('#myModal').modal('show');
			});
		</script>
	<?php endif; ?>


	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			Chocolat(document.querySelectorAll('.chocolat-parent .chocolat-image'))
		})
	</script>


</body>

</html>