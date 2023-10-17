<!-- Inspired Stories Section -->
<section class="blog-section bg-grey bd-bottom padding">
	<div class="container">
		<div class="section-heading text-center mb-40">
			<h2>Stories To Inspire</h2>
			<span class="heading-border"></span>
			<p>Help today because tomorrow you may be the one who <br> needs more helping!</p>
		</div>
		<div class="row">
			<div class="col-lg-12 xs-padding">
				<div class="blog-items grid-list row">
					
				<?php foreach ($story as $st):?>
					<div class="col-md-4 padding-15">
						<div class="blog-post">
							<img src="<?= $settings['panel-url']->value;?>assets/uploads/images/post/<?=$st->thumbnail;?>" alt="<?=$st->title;?>">
							<div class="blog-content">
								<span class="date"><i class="fa fa-clock-o"></i> <?=date("F j, Y", strtotime($st->date));?></span>
								<h3><a href="<?=base_url();?>post/detail/<?=$st->category_slug;?>/<?=$st->date;?>/<?=$st->slug;?>"><?=$st->title;?></a></h3>
								<?php
									 $clean = strip_tags($st->content);
									 $explode = explode(" ", $clean);
									 $par = implode(" ", array_splice($explode, 0, 10));
								?>
								<p><?=$par;?>..</p>
								<a href="<?=base_url();?>post/detail/<?=$st->category_slug;?>/<?=$st->date;?>/<?=$st->slug;?>" class="post-meta">Read More</a>
							</div>
						</div>
					</div>
					<?php endforeach;?>
				</div>
			</div>
		</div>
	</div>
</section>
