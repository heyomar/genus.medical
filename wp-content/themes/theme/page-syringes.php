<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="clearhero">
			<div class="mxw-1100-center">
				<div class="row middle-sm">
					<div class="col-xs-12 col-sm-6">
						<div class="box">
							<div class="content">
								<h1 class="title"><?php the_title(); ?></h1>
								<p class="copy"><?php the_field('hero_copy') ?></p>
							</div>
						</div>
					</div>

					<div class="col-xs-12 col-sm-6">
						<div class="box">
							<div class="image">
								<img class="img" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/oralcontrast__hero-bg.png">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
