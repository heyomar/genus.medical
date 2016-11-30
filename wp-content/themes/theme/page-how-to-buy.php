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
			<div class="content">

				<div class="find">
					<h3 class="title">Distributors</h3>
					<p>Enter your zip code to find a list of local distributors.</p>
					<div class="zip-code">
						<label for="zip-code">Zip Code<sup>*</sup></label>
						<input id="zipcode" type="number" name="zip-code">
            <div class="error">
                Please check field and submit again
            </div>
						<a id="findDist" class="btn blue" href="">Find Distributors</a>
					</div>
				</div>

				<div class="nearby">
					<h3 class="title">Nearby Distributors</h3>
					<div class="sort-by-distributors">
						<label for="sort-by-distributors">Sort By Distributors</label>
						<div class="select-arrow">
							<select id="select-distributor" name="sort-by-distributors">
								<option value="null">Select</option>
									<?php
										$terms = get_terms( 'distributor', array(
												'hide_empty' => false,
										) );

										foreach ($terms as $term) {
											echo "<option value='" . $term->term_id . "'>" . $term->name . "</option>";
										}
									?>
							</select>
						</div>
					</div>
				</div>


				<div class="legend">
					<div class="oral-contrast-products icon barium">Distributes GMT Oral Contrast Products</div>
					<div class="syringe-products icon syringe">Distributes GMT Syringes</div>
				</div>



				<div id="location" class="row"></div>

        <div id="loadmore"><a class="btn blue loadmore" href="#">Load More</a></div>


				<?php if( have_rows('gpos') ): ?>
					<div class="gpos">
						<h3 class="title">We Are Pleased to Be Affiliated with the following GPOs</h3>
						<div class="row">

				    <?php while ( have_rows('gpos') ) : the_row(); ?>
							<div class="col-xs-6 col-sm-4">
								<div class="logo">
									<img class="logo" src="<?php the_sub_field('gpo_logo'); ?>" alt="">
								</div>
							</div>
						<?php endwhile; ?>

						</div>
					</div>
				<?php endif; ?>
				<script id='demo' type='x-tmpl-mustache'>
					{{#locations}}
						<div data-distid="{{distributor.term_id}}" class="location col-xs-6 col-sm-4 col-md-4">
							<div class="inner">
								<div class="logo" style="background-image:url('{{distributor.logo}}');"></div>
								<strong>{{title.rendered}}</strong>
								<span class="city-state">{{city}}, {{state}}</span>
								<span class="zip-code">{{zip_code}}</span>
								<span class="phone-number"><a href="tel:{{phone_number}}">{{phone_number}}</a></span>
								<div class="syringe {{distributor.carries_syringes}}"></div>
								<div class="contrast {{distributor.carries_oral_contrast_products}}"></div>
							</div>
						</div>
					{{/locations}}
				</script>
			</div>
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
