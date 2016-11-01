<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
					<div class="hero">
								<h1 class="title"><?php the_title(); ?></h1>
								<p class="copy"><?php the_field('hero_copy') ?><p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
					<div class="ourmission mxw-900-center">
						<h4 class="title small">Our Mission</h4>
						<?php the_field('ourmission_copy'); ?>
					</div>
				</div>
			</div>
		</div>

<div class="mangement">
	<h4 class="title small">Mangement</h4>
	<div class="row mxw-1100-center">
		<?php if( have_rows('members_repeater') ): ?>
			<?php while ( have_rows('members_repeater') ) : the_row(); ?>
				<div class="col-xs-12 col-sm-4">
					<div class="box">
						<div class="inner">
							<div style="background-image: url('<?php the_sub_field('member_image') ?>')" class="img"></div>
							<h4 class="name"><?php the_sub_field('member_name'); ?></h4>
							<p class="bio">
								<?php the_sub_field('member_bio'); ?>
							</p>
						</div>
					</div>
				</div>
			<?php endwhile; ?>
			<?php else : ?>
		<?php endif; ?>
	</div>
</div>

<div class="cta cta-green">
		<div class="inner">
			<h2><?php the_field('cta_title') ?></h2>
			<?php the_field('cta_copy') ?>
			<a href="/" class="btn white"><?php the_field('cta_button_copy') ?></a>
		</div>
</div>


	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>