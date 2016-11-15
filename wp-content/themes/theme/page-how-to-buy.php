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
			<h3>Distributors</h3>
			<p>Enter your zip code to find a list of local distributors.</p>
			<div class="zip-code">
				<label for="zip-code">Zip Code</label>
				<input type="number" name="zip-code">
				<a class="btn blue" onclick="findDistributors()" href="">Find Distributors</a>

				<h3>Nearby Distributors</h3>
				<div class="sort-by-distributors">
					<label for="sort-by-distributors">Sort By Distributors</label>
					<select name="sort-by-distributors">
						<option>option</option>
						<option>option</option>
						<option>option</option>
						<option>option</option>
					</select>
				</div>

				<div class="legend">
						<span class="oral-contrast-product">Distributes GMT Oral Contrast Products</span>
						<span class="syringe-products">Distributes GMT Syringes</span>
				</div>
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