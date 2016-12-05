<?php get_header(); ?>

		<div style="background-image:url(//localhost:3000/wp-content/uploads/2016/11/syringe-header.jpg)" class="clearhero">
			<div class="mxw-1100-center">
				<div class="row middle-sm">
					<div class="col-xs-12 col-sm-12">
							<div class="content">
								<h1 class="title"><?php single_cat_title(); ?></h1>
								<p class="copy"><?php the_field('hero_copy') ?></p>
							</div>
					</div>
				</div>
			</div>
		</div>


<div class="product">
	<div class="inner">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-8">
				<div class="syringes mxw-900-center">
					<div class="row">

					<?php
					$category = strtolower(str_replace(' ', '-',single_cat_title('',false)));

					$args = array (
						'post_type' => 'product',
						'category_name' => $category,
						'posts_per_page' => -1
					);

					// The Query
					$the_query = new WP_Query( $args );

					// The Loop

					if ( $the_query->have_posts() ) { ?>

					    <?php while ( $the_query->have_posts() ) { ?>

									<?php  $the_query->the_post(); ?>

									<div class="border-1px-btm col-xs-12 col-sm-3 col-md-3">
										<div class="name"><?php the_title(); ?></div>
									</div>

									<div class="nopad col-xs-12 col-sm-9 col-md-9">
										<div class="inner"><?php echo get_field('description',get_the_ID()); ?>
										<?php echo get_field('product_code',get_the_ID()); ?>
										<?php echo get_field('product_description',get_the_ID()); ?></div>
									</div>



					<?php } ?>
					<?php } else { ?>
					    // no posts found
					<?php } ?>


					</div>

					<a class="btn blue "href="/how-to-buy">Find Distributors</a>
				</div>

				<?php wp_reset_query(); ?>


			</div>

			<?php echo get_template_part( 'modules/product-sidebar'); ?>
		</div>
	</div>
</div>


<div class="cta cta-green">
		<div class="inner mxw-1100-center">
			<h2>Find what you need, with no minimum purchase.</h2>
			<p>Make your purchases efficiently to save storage space and your disposable budget.</p>
			<a href="/request-product-information" class="btn white">Request Product Information</a>
		</div>
</div>
<?php get_footer(); ?>
