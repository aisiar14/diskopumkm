<!DOCTYPE html>
<html lang="en">
	
	<?php $this->load->view('part/head');?>

	<body>
		<div class="main-page-wrapper">
			
			<?php $this->load->view('part/navbar');?>
			<?php $this->load->view('part/title');?>


			<section class="blog-section padding">
				<div class="container">
					<div class="row">
						<div class="col-lg-9 xs-padding">
							<div class="blog-items single-post">
								<h2 class="mt-2"><?=$infrastructure->title;?>&nbsp; &nbsp;&nbsp;</h2>
								
								<div class="meta-info pt-3">
									<span>
										<i class="ti-user"></i> Published By <a href="#">Admin</a>
									</span>
									<span>
										<i class="ti-time"></i> Posted on <a href="#"><?=date("F j, Y", strtotime($infrastructure->date));?></a>
									</span>
									<span>
										<i class="ti-eye"></i> View(s) <a href="#">0</a>
									</span>
								</div><!-- Meta Info -->
								<p class="pt-2"><?=$infrastructure->preview_link;?></p>
								
								<?php if($infrastructure->download_link != "" || $infrastructure->download_link != NULL):?>
									<h6 class="mb-2">Download Link</h6>
									<a href="<?=$infrastructure->download_link;?>" target="_blank" class="btn btn-danger mb-5"><i class="fas fa-download"></i> Download</a>
								<?php endif;?>
								<p class="pt-2"><?=$infrastructure->content;?></p>
							</div>
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
