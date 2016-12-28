<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

	<div class="home-hero">
		<div class="inner mxw-1100-center">
				<div class="content">
          <div class="skin">
              <h1 class="title"><?php the_field('hero_title'); ?></h1>
				      <?php the_field('hero_copy'); ?>
				      <h3 class="sub-title"><?php the_field('hero_subline'); ?></h3>
          </div>
        </div>
		</div>
	</div>

	<div class="med">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<div class="inner callout-oralcontrast">
							<a href="/oral-contrast"><span class="label">Barium Sulfate &amp; Related Products</span></a>
						</div>
					</div>
			</div>
			<div class="col-xs-12 col-sm-6">
					<div class="box">
						<div class="inner callout-powerinjector">
							<a href="/syringes"><span class="label">Power Injector Syringes &amp; Supplies</span></a>
						</div>
					</div>
			</div>
		</div>
	</div>

    <?php

    $posts = get_field('homepage_event');

    if( $posts ): ?>
    <div class="events">
      <h4 class="title small">Upcoming Events</h4>
      <div class="inner mxw-900-center">
      <div class="row">
        <?php foreach( $posts as $post): // variable must be called $post (IMPORTANT) ?>
            <?php setup_postdata($post); ?>
            <div class="col-xs-12 col-sm-4 col-lg-4">
              <div class="single-event">
								<div class="image">
									<?php the_post_thumbnail('post-thumbnail'); ?>
								</div>
                <strong><?php the_title(); ?></strong><br/>
                <?php the_field('location') ?><br>
                <?php the_field('start_date') ?>&nbsp;&hyphen;&nbsp;<?php the_field('end_date') ?><br/>
                <?php the_field('start_time') ?>&nbsp;&hyphen;&nbsp;<?php the_field('end_time') ?><br>
								<a target="_blank" class="link" href="<?php echo get_field('more_info_link'); ?>">More Information ></a>
              </div>
            </div>

        <?php endforeach; ?>
      </div>


    </div>
      </div>
        <?php wp_reset_postdata();  ?>
    <?php endif; ?>

	<div class="cta cta-green">
		<div class="inner">
			<h2><?php the_field('cta_title'); ?></h2>
			<a href="/request-product-information" class="btn white"><?php the_field('cta_button_copy') ?></a>
		</div>
</div>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
