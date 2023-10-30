<div class="pager-header">
	<div class="container">
		<div class="page-content">
			<h2><?= $title['display']; ?></h2>
			<p>Website Resmi Dinas Koperasi dan UKM Kota Manado</p>

			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?= base_url(); ?>home">Beranda</a></li>
				<?php $no = 0;
				foreach ($title['level'] as $t) : ?>
					<li class="breadcrumb-item">
						<a href="<?= (isset($title['href'][$no]) && $title['href'][$no] != "") ? base_url() . $title['href'][$no] : "#"; ?>"><?= $t; ?></a>
					</li>
				<?php $no++;
				endforeach; ?>
			</ol>
		</div>
	</div>
</div><!-- /Page Header -->