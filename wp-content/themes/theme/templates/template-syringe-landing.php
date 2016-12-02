<?php
/*
 * Template Name: Syringe Landing
 * Description: Page template for syringe landing
 */

?>


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

		<?php
			$dept = $post->post_name;

			// get the taxonomy item and save the id for later
			$parent_term = get_term_by( "slug", $dept, 'category');

			// now look for any children taxonomy items
			$term_children = get_term_children( $parent_term->term_id, 'category' );

			$term_array = array();
			foreach ( $term_children as $child ) {
				$term = get_term_by( 'id', $child, 'category' );
				$term_order = get_field('order', $term);

				$t_args = array(
					'post_type'        => 'product',
					'posts_per_page'   => -1,
					'tax_query' => array(
						array(
							'taxonomy' => 'category',
							'field'    => 'ID',
							'terms'    => $child,
							'include_children' => false
						),
					),
					'orderby'          => 'post_title',
					'order'            => 'ASC',
					'post_status'      => 'publish',
					'suppress_filters' => true
				);
				$term_array[$term_order] = array('name' => $term->name, 'args' => $t_args);
			};
			ksort($term_array); ?>

			<?php foreach ($term_array as $term) {

				$child_q = new WP_Query($term['args']); ?>

				<?php if ( $child_q->have_posts() ) { ?>

					<div class="<?php echo str_replace(' ', '-', strtolower($term['name'])); ?>">
						<div class="inner mxw-1100-center">
							<h4 class="title small"><?php echo $term['name']; ?></h4>
								<div class="row">
										<?php	while ( $child_q->have_posts() ) : $child_q->the_post(); ?>
												<div class="col-xs-12 col-sm-4">
													<div class="box">
														<div class="med-sm">
															<div style="background-image: url('<?php
															$image = get_field('product_image');
															if( !empty($image) ):
															echo $image['sizes'][ 'large' ];
															endif;
															?>');" class="image">
																<a href="/products/<?php
																$title = strtolower(get_the_title());
																echo $string = str_replace(' ', '', $title ); ?>">
																	<span class="label">VIEW PRODUCT</span></a>
															</div>
															<div class="description">
																<h4 class="name"><a href="/products/<?php
																$title = strtolower(get_the_title());
																echo $string = str_replace(' ', '', $title ); ?>"><?php the_title(); ?></a></h4>
																<?php the_field('product_copy') ?>
															</div>
														</div>
													</div>
												</div>
										<?php endwhile; ?>
							</div>
						</div>
					</div>

			<?php  } } wp_reset_query(); ?>



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
