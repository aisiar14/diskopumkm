<!DOCTYPE html>
<html lang="en">
	
	<?php $this->load->view('part/head');?>

	<body>
		<div class="main-page-wrapper">
			
			<?php $this->load->view('part/navbar');?>
			<?php $this->load->view('part/title');?>

			<section class="contact-section padding">
				<div id="google_map"></div><!-- /#google_map -->
				<div class="container">
					<div class="row contact-wrap pt-5">
						<div class="col-md-6 xs-padding">
							<div class="contact-info">
								<h3>Get in touch</h3>
								<p>The secret to happiness lies in helping others. Never underestimate the difference YOU can make in the lives of the poor, the abused and the helpless.</p>
								<p>The secret to happiness lies in helping others. Never underestimate the difference.</p>
								<ul>
									<li><i class="ti-email"></i> <?= $settings['contact-email']->value;?></li>
									<li><i class="ti-mobile"></i> <?= $settings['contact-phone']->value;?></li>
									<li><i class="ti-world"></i> <?= $settings['contact-website']->value;?></li>
									<li><i class="ti-location-pin"></i> <?= $settings['contact-address']->value;?></li>
								</ul>
							</div>
						</div>
						<div class="col-md-6 xs-padding">
							<div class="contact-form">
								<h3>Drop us a line</h3>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
								<form action="contact.php" method="post" id="ajax_form" class="form-horizontal">
									<div class="form-group colum-row row">
										<div class="col-sm-6">
											<input type="text" id="name" name="name" class="form-control" placeholder="Name" required>
										</div>
										<div class="col-sm-6">
											<input type="email" id="email" name="email" class="form-control" placeholder="Email" required>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<textarea id="message" name="message" cols="30" rows="5" class="form-control message" placeholder="Message" required></textarea>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<button id="submit" class="default-btn" type="submit">Send Message</button>
										</div>
									</div>
									<div id="form-messages" class="alert" role="alert"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section><!-- /Contact Section -->

			
			<?php $this->load->view('part/foot');?>
			<?php $this->load->view('part/script');?>
			<?php $this->load->view('part/map_script');?>
		
		</div> <!-- /.main-page-wrapper -->
	</body>
</html>
