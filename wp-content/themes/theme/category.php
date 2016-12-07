<!--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
[ PAGE COMMENTS ]–––––––––––––––––––––––––––––––––––––––––––––[ PAGE COMMENTS ]

	CATEGORY TEMPLATE
	This file is for the syringe categories. Because they are displayed
	differently than the oral contrast products, they needed their own
	template. Nothing too complicated here. Using a WP query to get
	posts by category name then looping through.

–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-->



<!--[––––
			↓ HEADER ↓
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––//]-->
<?php get_header(); ?>


<!--[––––
			↓ HERO ↓
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––//]-->
<div style="background-image:url(//localhost:3000/wp-content/uploads/2016/11/syringe-header.jpg)" class="clearhero">
	<div class="mxw-1100-center">
		<div class="row middle-sm">
			<div class="col-xs-12 col-sm-12">
					<div class="content">
						<h1 class="title"><?php single_cat_title(); ?></h1>
						<p class="copy">
							Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.
						</p>
					</div>
			</div>
		</div>
	</div>
</div>


<!--[––––
			↓ CONTENT ↓
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––//]-->
<div class="product">
	<div class="inner">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-8">
				<div class="syringes-cat mxw-900-center">
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
									<div class="pad-20px-top rule-name nopad col-xs-12 col-sm-3 col-md-3">
										<div class="name"><?php the_title(); ?></div>
									</div>
									<div class=" pad-20px-top rule-body nopad col-xs-12 col-sm-9 col-md-9">
										<div class="inner"><?php echo get_field('description',get_the_ID()); ?>
										Product Code: <?php the_field('product_code') ?><br>
										Product Description: <?php the_field('product_description'); ?></div>
									</div>
								<?php } ?>
						<?php } else {} ?>
					</div>
					<a class="btn blue "href="/how-to-buy">Find Distributors</a>
				</div>
				<?php wp_reset_query(); ?>
			</div>
			<?php echo get_template_part( 'modules/product-sidebar'); ?>
		</div>
	</div>
</div>


<!--[––––
			↓ CTA ↓
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––//]-->
<div class="cta cta-green">
		<div class="inner mxw-1100-center">
			<h2>Find what you need, with no minimum purchase.</h2>
			<p>Make your purchases efficiently to save storage space and your disposable budget.</p>
			<a href="/request-product-information" class="btn white">Request Product Information</a>
		</div>
</div>


<!--[––––
		 	↓ FOOTER ↓
–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––//]-->
<?php get_footer(); ?>
