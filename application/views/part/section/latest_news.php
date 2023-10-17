<!-- Inspired Stories Section -->
<section class="blog-section bg-grey bd-bottom padding">
	<div class="container">
		<div class="section-heading text-center mt-40 mb-40">
			<h2>Artikel Terbaru</h2>
			<span class="heading-border"></span>
			<p>Berita dan Kegiatan terbaru Pemerintah Kecamatan Mapanget Kota Manado</p>
		</div>
		<div class="row">
			<div class="col-lg-12 xs-padding">
				<div class="blog-items grid-list row">
					
				<?php foreach ($post_latest as $plt):?>
					<div class="col-md-4 padding-15">
						<div class="blog-post">
							<img src="<?= $settings['panel-url']->value;?>assets/uploads/images/post/<?=$plt->thumbnail;?>" alt="<?=$plt->title;?>">
							<div class="blog-content">
								<span class="date"><i class="ti-calendar"></i> <?=date("F j, Y", strtotime($plt->date));?></span>
								<h3>
									<a href="<?=base_url();?>post/detail/<?=$plt->category_slug;?>/<?=$plt->date;?>/<?=$plt->slug;?>">
										<?php 
											$title_exp = explode(" ", $plt->title);
											if(count($title_exp) < 10){
												echo $plt->title;
											}else{
												echo implode(" ", array_splice($title_exp, 0, 10))."...";
											}
										?>
									</a>
								</h3>
								<?php
									 $clean = strip_tags($plt->content);
									 $explode = explode(" ", $clean);
									 $par = implode(" ", array_splice($explode, 0, 10));
								?>
								<p><?=$par;?>..</p>
								<a href="<?=base_url();?>post/detail/<?=$plt->category_slug;?>/<?=$plt->date;?>/<?=$plt->slug;?>" class="post-meta">Selengkapnya</a>
							</div>
						</div>
					</div>
					<?php endforeach;?>
				</div>
			</div>
		</div>
	</div>
</section>

