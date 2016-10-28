<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
					<div class="hero about__hero">

								<h1>About Us</h1>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed sapien quam. Sed dapibus est id enim facilisis, at posuere turpis adipiscing. Quisque sit amet dui dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed sapien quam. Sed dapibus est id enim facilisis, at posuere turpis adipiscing. Quisque sit amet dui dui.</p>

					</div>
				</div>
			</div>
		</div>
		


	<?php get_template_part('modules/cta-green');?>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>