<!DOCTYPE html>
<html lang="en">
	
	<?php $this->load->view('part/head');?>

	<body>
		<div class="main-page-wrapper">
			
			<?php $this->load->view('part/navbar');?>
			<?php $this->load->view('part/title');?>
			


			<section class="blog-section bg-grey padding">
				<div class="container">
					<div class="row">
						<div class="col-lg-9 xs-padding">
							<?php foreach ($infrastructure as $inf):?>
								<div class="blog-items row">
									<div class="col-md-12 padding-15">
										<div class="blog-post">
											
											<img src="<?= base_url();;?>assets/img/infrastructure2.jpg" alt="thumbnail">
											<div class="blog-content">
												<span class="date"><i class="ti-time"></i> <a href="#" class="date"><?=date("F j, Y", strtotime($inf->date));?></span>
												<h3><a href="<?=base_url();?>infrastructure/detail/<?=$inf->date;?>/<?=$inf->slug;?>"><?=$inf->title;?></a></h3>
											</div>
										</div>
									</div><!-- Post 1 -->
								</div>
							<?php endforeach;?>

							<!-- <ul class="pagination_wrap mt-30">
								<li><a href="#"><i class="ti-arrow-left"></i></a></li>
								<li><a href="#">1</a></li>
								<li><a href="#" class="active">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#"><i class="ti-arrow-right"></i></a></li>
							</ul> -->
							<?= $pagination; ?>

						</div><!-- Blog Posts -->
						<div class="col-lg-3 xs-padding">
							<?php $this->load->view('part/rightbar');?>
						</div>
					</div>
				</div>
			</section><!-- /Blog Section -->

			
			<?php $this->load->view('part/foot');?>
			<?php $this->load->view('part/script');?>
		
		</div> <!-- /.main-page-wrapper -->
	</body>
</html>
