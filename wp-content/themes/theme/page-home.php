<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

	<div class="home-hero">
		<div class="inner mxw-1100-center">
				<div class="content">
          <div class="skin"><h1 class="title"><?php the_field('hero_title'); ?></h1>
				      <?php the_field('hero_copy'); ?>
				      <h3 class="sub-title"><?php the_field('hero_subline'); ?></h3>
          </div>
        </div>
		</div>
		<!-- <a href="#">
			<span class="arrowbox">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/arrow__down.png">
			</span>
		</a> -->
	</div>

	<div class="med">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<div class="inner callout-oralcontrast">
							<a href="/oral-contrast"><span class="label">Oral Contrast</span></a>
						</div>
					</div>
			</div>
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<div class="inner callout-powerinjector">
							<a href="/syringes"><span class="label">Power Injector Syringes</span></a>
						</div>
					</div>
			</div>
		</div>
	</div>

  <div class="events">
    <h4 class="title small">Upcoming Events</h4>
    <div class="inner mxw-900-center">
      <?php $events = new WP_Query( array( 'post_type' => 'event' ) );?>
      <?php if( $events->have_posts()): ?>
        <div class="row">
          <?php while ( $events->have_posts()) : $events->the_post();  ?>
            <div class="col-xs-12 col-sm-4 col-lg-4">
              <div class="single-event">
                <strong><?php the_title(); ?></strong><br/>
                <?php the_field('location') ?><br>
                <?php the_field('start_date') ?>&nbsp;&hyphen;&nbsp;<?php the_field('end_date') ?><br/>
                <?php the_field('start_time') ?>&nbsp;&hyphen;&nbsp;
                <?php the_field('end_time') ?>
              </div>
            </div>

          <?php endwhile; ?>
        </div>
      <?php endif ?>
    </div>
  </div>
<?php wp_reset_query(); ?>
	<div class="cta cta-green">
		<div class="inner">
			<h2><?php the_field('cta_title'); ?></h2>
			<a href="/request-product-information" class="btn white"><?php the_field('cta_button_copy') ?></a>
		</div>
</div>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
