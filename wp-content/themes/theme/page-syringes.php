<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="clearhero">
			<div class="mxw-1100-center">
				<div class="row middle-sm">
					<div class="col-xs-12 col-sm-10">
							<div class="content">
								<h1 class="title"><?php the_title(); ?></h1>
								<p class="copy"><?php the_field('hero_copy') ?></p>
							</div>
					</div>
				</div>
			</div>
		</div>


		<div class="categories">
			<div class="inner mxw-1100-center">
					<div id="categoriesRow" class="row">
						<!-- category cards injected via js in syringe-landing.js -->
					</div>
			</div>
		</div>


		<div class="cta cta-green">
				<div class="inner mxw-900-center">
					<h2><?php the_field('cta_title') ?></h2>
					<?php the_field('cta_copy') ?>
					<a href="<?php the_field('cta_button_link') ?>" class="btn white"><?php the_field('cta_button_copy') ?></a>
				</div>
		</div>

	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
