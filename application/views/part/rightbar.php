<div class="sidebar-wrap">
	<div class="sidebar-widget mb-50">
		<h4>Pencarian</h4>
		<form action="" class="search-form">
			<input type="text" class="form-control" placeholder="Type here">
			<button class="search-btn" type="button"><i class="fa fa-search"></i></button>
		</form>
	</div>
	<div class="sidebar-widget mb-50">
		<h4>Kategori</h4>
		<ul class="cat-list">
			<?php foreach ($postcat as $psc):?>
				<li><a href="<?=base_url();?>post/list/<?=$psc->slug;?>"><?=$psc->title;?></a></li>
			<?php endforeach;?>
		</ul>
	</div><!-- Categories --> 
	<div class="sidebar-widget mb-50">
		<h4>Layanan</h4>
		<ul class="cat-list">
			<?php foreach ($service_popular as $ser_pop):?>
				<li><a href="<?=base_url();?>service/detail/<?=$ser_pop->slug;?>"><?=$ser_pop->title;?></a></li>
			<?php endforeach;?>
		</ul>
	</div><!-- Categories --> 
	<div class="sidebar-widget mb-50">
		<h4>Artikel Terbaru</h4>
		<ul class="recent-posts">
			<?php foreach ($post_latest as $po_lt):?>
			<li class="clearfix">
				<img src="<?= $settings['panel-url']->value;?>assets/uploads/images/post/<?=$po_lt->thumbnail;?>" alt="<?=$po_lt->title;?>">
				<div>
					<h4>
						<a href="<?=base_url();?>post/detail/<?=$po_lt->category_slug;?>/<?=$po_lt->date;?>/<?=$po_lt->slug;?>">
							<?php 
								$title_exp = explode(" ", $po_lt->title);
								if(count($title_exp) < 10){
									echo $po_lt->title;
								}else{
									echo implode(" ", array_splice($title_exp, 0, 10))."...";
								}
							?>
						</a>
					</h4>
					<span class="date"><i class="ti-calendar"></i> <?=date("F j, Y", strtotime($po_lt->date));;?></span>
					<!-- <small><?=$po_lt->category;?></small><br> -->
				</div>
			</li>
			<?php endforeach;?>
		</ul>
	</div><!-- Recent Posts -->
	<div class="sidebar-widget mb-50">
		<h4>Artikel Populer</h4>
		<ul class="recent-posts">
			<?php foreach ($post_popular as $po_pop):?>
			<li class="clearfix">
				<img src="<?= $settings['panel-url']->value;?>assets/uploads/images/post/<?=$po_pop->thumbnail;?>" alt="<?=$po_pop->title;?>">
				<div>
					<h4>
						<a href="<?=base_url();?>post/detail/<?=$po_pop->category_slug;?>/<?=$po_pop->date;?>/<?=$po_pop->slug;?>">
							<?php 
								$title_exp = explode(" ", $po_pop->title);
								if(count($title_exp) < 10){
									echo $po_pop->title;
								}else{
									echo implode(" ", array_splice($title_exp, 0, 10))."...";
								}
							?>
						</a>
					</h4>
					<span class="date"><i class="ti-calendar"></i> <?=date("F j, Y", strtotime($po_pop->date));;?></span>
					<!-- <small><?=$po_pop->category;?></small><br> -->
				</div>
			</li>
			<?php endforeach;?>
		</ul>
	</div><!-- Recent Posts -->
