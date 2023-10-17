<!-- Latest News Section -->
<section class="about-section bd-bottom shape circle padding">
	<div class="container">
		<div class="section-heading text-center mb-40">
			<h2>Data Infrastruktur</h2>
			<span class="heading-border"></span>
			<p>Data Infrastruktur Terbaru yang disediakan di SIAARS Hebat</p>
		</div>
		<div class="row">
			<div class="col-md-12 xs-padding">
				<div class="about-wrap row">
					
					<?php foreach ($infrastructure_latest as $ilt):?>
					<div class="col-md-4 xs-padding">
						<a href="<?= base_url();?>infrastructure/detail/<?=$ilt->date;?>/<?=$ilt->slug;?>">
							<img src="<?= base_url();?>assets/img/infrastructure.jpg" alt="blog post">
						</a>

						<h3>
							<?=$ilt->title;?>
						</h3>
						<div class="event-info">
							<p><i class="ti-calendar"></i><?=date("F j, Y", strtotime($ilt->date));?></p>
						</div>
					</div>
					
					<?php endforeach;?>
				</div>
			</div>
		</div>
		<div class="mt-20 text-center">
			
			<a href="<?=base_url();?>infrastructure" class="default-btn">Selengkapnya</a>
		
		</div>
	</div>
</section><!-- /Causes Section -->
