<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<div style="background-image:url(<?php
$image = get_field('hero_background');
if( !empty($image) ):
echo $image['sizes'][ 'large' ];
endif;
?>);" class="bluehero"></div>

<div class="content">
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="mxw-1100-center">
					<h2 class="title"><?php the_title(); ?></h2>
					<div class="copy"><?php the_field('body_copy'); ?></div>
				</div>
			</div>
		</div>
	</div>

	<div class="mxw-1100-center">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="box">
						<?php the_content(); ?>
				</div>
			</div>
		</div>
	</div>
</div>



	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
