<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<div class="legal-page"><div style="background-image:url(<?php echo get_stylesheet_directory_uri(); ?>/assets/images/secondary-pages-header.jpg);" class="bluehero"></div>


<div class="content">
	<div class="row">
		<div class="col-xs-12">

				<div class="mxw-1100-center">
					<h2 class="title"><?php the_title(); ?></h2>
				</div>

		</div>
	</div>

	<div class="mxw-1100-center">
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
						<?php the_content(); ?>
				</div>
			</div>
		</div>
	</div>
</div></div>

<?php endwhile; ?>
<?php endif ?>
<?php get_footer(); ?>
