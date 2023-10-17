<!-- Latest News Section -->
<section class="about-section bd-bottom shape circle padding">
	<div class="container">
		<!-- <div class="section-heading text-center mb-40">
			<h2>Foto Kegiatan</h2>
			<span class="heading-border"></span>
			<p>Pemerintah Kecamatan Mapanget Kota Manado</p>
		</div>
		<div class="chocolat-parent text-center mb-40">
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/2.jpg" title="image 2"><img width="200" src="<?=base_url();?>assets/img/gallery/2.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/3.jpg" title="image 3"><img width="200" src="<?=base_url();?>assets/img/gallery/3.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/6.jpg" title="image 6"><img width="200" src="<?=base_url();?>assets/img/gallery/6.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/5.jpg" title="image 5"><img width="200" src="<?=base_url();?>assets/img/gallery/5.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/1.jpg" title="image 1"><img width="200" src="<?=base_url();?>assets/img/gallery/1.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/7.jpg" title="image 7"><img width="200" src="<?=base_url();?>assets/img/gallery/7.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/8.jpg" title="image 8"><img width="200" src="<?=base_url();?>assets/img/gallery/8.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/9.jpg" title="image 9"><img width="200" src="<?=base_url();?>assets/img/gallery/9.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/10.jpg" title="image 10"><img width="200" src="<?=base_url();?>assets/img/gallery/10.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/11.jpg" title="image 11"><img width="200" src="<?=base_url();?>assets/img/gallery/11.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/12.jpg" title="image 12"><img width="200" src="<?=base_url();?>assets/img/gallery/12.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/13.jpg" title="image 13"><img width="200" src="<?=base_url();?>assets/img/gallery/13.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/14.jpg" title="image 14"><img width="200" src="<?=base_url();?>assets/img/gallery/14.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/15.jpg" title="image 15"><img width="200" src="<?=base_url();?>assets/img/gallery/15.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/16.jpg" title="image 16"><img width="200" src="<?=base_url();?>assets/img/gallery/16.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/17.jpg" title="image 17"><img width="200" src="<?=base_url();?>assets/img/gallery/17.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/18.jpg" title="image 18"><img width="200" src="<?=base_url();?>assets/img/gallery/18.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/19.jpg" title="image 19"><img width="200" src="<?=base_url();?>assets/img/gallery/19.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/20.jpg" title="image 20"><img width="200" src="<?=base_url();?>assets/img/gallery/20.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/21.jpg" title="image 21"><img width="200" src="<?=base_url();?>assets/img/gallery/21.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/22.jpg" title="image 22"><img width="200" src="<?=base_url();?>assets/img/gallery/22.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/23.jpg" title="image 23"><img width="200" src="<?=base_url();?>assets/img/gallery/23.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/24.jpg" title="image 24"><img width="200" src="<?=base_url();?>assets/img/gallery/24.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/25.jpg" title="image 25"><img width="200" src="<?=base_url();?>assets/img/gallery/25.jpg" /></a>
			<a class="chocolat-image" href="<?=base_url();?>assets/img/gallery/26.jpg" title="image 26"><img width="200" src="<?=base_url();?>assets/img/gallery/26.jpg" /></a>
		</div> -->
		
		<div class="section-heading text-center mb-40">
			<h2>Layanan</h2>
			<span class="heading-border"></span>
			<p>Layanan Publik yang tersedia di Kecamatan Mapanget</p>
		</div>
		<div class="row">
			<div class="col-md-12 xs-padding">
				<div class="about-wrap row">
					
					<?php foreach ($service_popular as $sep):?>
					<div class="col-md-4 xs-padding">
						<a href="<?= base_url();?>service/detail/<?=$sep->slug;?>">
							<img src="<?= $settings['panel-url']->value;?>assets/uploads/images/service/<?=$sep->thumbnail;?>" alt="<?=$sep->title;?>">
						</a>

						<h3>
							<?=$sep->title;?>
						</h3>
						<!-- <div class="event-info">
							<p><i class="ti-calendar"></i><?//=date("F j, Y", strtotime($pos->date));?></p>
						</div> -->
					</div>
					
					<?php endforeach;?>

				</div>
			</div>
		</div>
		<div class="mt-20 text-center">
			
			<a href="<?=base_url();?>service" class="default-btn">Selengkapnya</a>
		</div>
	</div>
</section><!-- /Causes Section -->
