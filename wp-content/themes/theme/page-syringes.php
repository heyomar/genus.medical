<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div style="background-image:url(<?php the_field('hero_background') ?>)" class="clearhero">
			<div class="mxw-1100-center">
				<div class="row middle-sm">
					<div class="col-xs-12 col-sm-10">
							<div class="content">
								<h1 class="title"><?php the_title(); ?></h1>
								<?php the_field('hero_copy') ?>
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
				$term_background = get_field('background_image', $term);

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
				$term_array[$term_order] = array('name' => $term->name, 'args' => $t_args, 'background' => $term_background);
			};
			ksort($term_array); ?>

			<div class="categories">
				<div class="inner mxw-1100-center">
						<div id="categoriesRow" class="row">
			<?php foreach ($term_array as $term) { ?>
				<?php
				$category = get_category_by_slug($term['name']);
				$count = $category->category_count;
				?>

								<!-- category cards injected via js in syringe-landing.js -->
								<div class="card col-xs-12 col-sm-4">
									<div class="med-sm">
										<div style="background-image:url('<?php
										$image = $term['background'];
										if( !empty($image) ):
										echo $image['sizes'][ 'large' ];
										endif;
										?>');" class="image">
											<a <?php
												if ($count > 0) { ?>
													href="/category/syringes/<?php echo strtolower(str_replace(' ', '-', $term['name']));  ?>?cat=<?php echo strtolower(str_replace(' ', '-', $term['name']));?>">
												<?php } ?>
												<span class="label"><?php echo $term['name']; ?></span>
											</a>
										</div>
									</div>
								</div>


			<?php } wp_reset_query(); ?>
		</div>
</div>
</div>


		<div class="cta cta-green">
				<div class="inner mxw-1100-center">
					<h2><?php the_field('cta_title') ?></h2>
					<?php the_field('cta_copy') ?>
					<a href="<?php the_field('cta_button_link') ?>" class="btn white"><?php the_field('cta_button_copy') ?></a>
				</div>
		</div>

	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
