<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>


<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
					<div class="hero">
								<div class="mxw-900-center"><h1 class="title"><?php the_title(); ?></h1>
										<p class="copy"><?php the_field('hero_copy') ?><p>
								</div>
					</div>
				</div>
			</div>
		</div>


<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-8">
		<div class="box">
			
		</div>
	</div>


	<?php get_template_part('modules/product-sidebar') ?>
</div>






<div class="cta cta-green">
		<div class="inner">
			<h2><?php the_field('cta_title') ?></h2>
			<a href="<?php the_field('cta_button_link') ?>" class="btn white"><?php the_field('cta_button_copy') ?></a>
		</div>
</div>

	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>