<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>


<div style="background-image: url('http://placehold.it/1600x369');" class="product-hero">
	<div class="inner mxw-1100-center">
		<span class="category">Oral Contrast</span>
		<div class="name"><?php echo 'This is the name' ?></div>
	</div>
</div>

<div class="product">
	<div class="inner">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-8">
				<div class="box">
							<div class="info">
									<div class="row">
										<div class="col-xs-12 col-sm-6 col-md-6 nopad">
											<div class="box">
												<div class="gallery">
													<?php
												$number = 1;
												if( have_rows('product_images') ): ?>
													<?php while ( have_rows('product_images') ) : the_row(); ?>
															<div class="image-<?php echo $number ++ ?>" style="background-image: url('<?php the_sub_field('image'); ?>');"></div>
												<?php endwhile; endif; ?>
												</div>
											</div>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6 nopad">
											<div class="box">
												<div class="content">
													<h3 class="heading"><?php the_field('heading') ?></h3>
													<?php the_field('description') ?>
													Cross reference: <?php if( have_rows('cross_refrence') ):
																	while ( have_rows('cross_refrence') ) : the_row();
																				the_sub_field('reference_code');
																	endwhile; endif; ?>
														<br><br>
														Product Code: <?php the_field('product_code') ?>
														<br>
														Product description: <?php the_field('product_description') ?>
												</div>
											</div>
										</div>
									</div>
							</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-12 col-md-4 nopad">
						<div class="sidebar">
							<h4 class="title small">Products</h4>
							<div>Oral Contrast</div>
							<div>Power Injectors</div>
						</div>
			</div>
		</div>
	</div>
</div>



<div class="cta cta-blue">
		<div class="inner">
			<h2>Make the most of your oral contrast budget.</h2>
			<p>Learn more about how you can save money on Vanilla SilQ CT Barium.</p>
			<a href="/" class="btn white">Request Product Information</a>
		</div>
</div>


	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>