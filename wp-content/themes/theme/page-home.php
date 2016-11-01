<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

	<div class="home-hero">
		<div class="inner mxw-900-center">
				<h1><?php the_field('hero_title'); ?></h1>
				<?php the_field('hero_copy'); ?>
				<h3><?php the_field('hero_subline'); ?></h3>
		</div>
		<a href="#">
			<span class="arrowbox">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/arrow__down.png">
			</span>
		</a>
	</div>
	
	<div class="med">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<div class="inner callout-oralcontrast">
							<a href="#"><span class="label">View Product</span></a>
						</div>
					</div>
			</div>
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<div class="inner callout-powerinjector">
							<a href="#"><span class="label">View Product</span></a>
						</div>
					</div>
			</div>
		</div>
	</div>

	<div class="cta cta-green">
		<div class="inner">
			<h2><?php the_field('cta_title'); ?></h2>
			<a href="/" class="btn white"><?php the_field('cta_button') ?></a>
		</div>
</div>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>