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
								<h2 class="mt-2"><?=$page->title;?>&nbsp; &nbsp;&nbsp;</h2>
								
								<div class="meta-info pt-3">
									<span>
										<i class="ti-user"></i> Publikasi oleh <a href="#">Admin</a>
									</span>
									<span>
										<i class="ti-eye"></i> Dilihat <a href="#"><?=number_format($page->view);?> kali</a>
									</span>
								</div><!-- Meta Info -->
								<p class="pt-2"><?=$page->content;?></p>
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
