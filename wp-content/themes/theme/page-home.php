<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

	<div class="hero__ctn">
		<div class="hero__inner">
				<h1>Choice matters.</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<h3>Finally, you have a choice in medical suppliers</h3>
		</div>
		<a href="#">
			<span class="arrowbox">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/arrow__down.png">
			</span>
		</a>
	</div>
	
	<div class="med">
		<div class="row med__inner">
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<a href="#"><span class="med__label">View Product</span></a>
					</div>
			</div>
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<a href="#"><span class="med__label">View Product</span></a>
					</div>
			</div>
		</div>
	</div>

	<?php get_template_part('modules/cta-green');?>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>