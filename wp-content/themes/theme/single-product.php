<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>


<div style="background-image: url('<?php the_field('hero_image') ?>');" class="product-hero">
	<div class="inner mxw-1100-center">
		<span class="category productCategory">
      <?php $category = get_the_category();
            $parent = get_category($category[0]->category_parent);
            echo $parentCat = str_replace('-', ' ', $parent->slug); ?>
    </span>
		<div class="name productName"><?php the_title(); ?></div>
	</div>
</div>

<div class="product">
	<div class="inner">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-8">
				<div class="box">
							<div class="info">
									<div class="row">
										<div class="col-xs-12 col-sm-6 col-md-6 nopad">
											<div class="box">
                        <div class="identify">
                          <div class="inner mxw-1100-center">
                        		<span class="category">Oral Contrast</span>
                        		<div class="name"><?php the_title(); ?></div>
                            <a class="btn green" href="/oral-contrast">View Other Products</a>
                        	</div>
                        </div>
												<div class="gallery">
														<div class="inner">
															<div class="images">
																	<div class="view">
																		<div style="background-image: url('<?php the_field('product_image_1') ?>');" class="image"></div>
																	</div>
																	<div class="thumbs">
																		<div style="background-image: url('<?php the_field('product_image_2') ?>');" class="thumb"></div>

																		<div style="background-image: url('<?php the_field('product_image_3') ?>');" class="thumb"></div>
																	</div>
															</div>
														</div>
												</div>
											</div>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6 nopad">
											<div class="box">
												<div class="content">
													<h3 class="heading"><?php the_field('heading') ?></h3>
													<?php the_field('description') ?>
														Product Code: <?php the_field('product_code') ?>
														<br>
														Product description: <?php the_field('product_description') ?><br>

                            <div class="mobile-gallery">
                              <strong>Gallery</strong>
                              <div class="inner">
                                  <a class="lity-link" data-lity href="<?php the_field('product_image_1')?>">
                                    <div class="mobile-thumb" style="background-image:url('<?php the_field('product_image_1')?>');">
                                    </div>
                                  </a>

                                  <a class="lity-link" data-lity href="<?php the_field('product_image_2')?>">
                                    <div class="mobile-thumb" style="background-image:url('<?php the_field('product_image_2')?>');">
                                    </div>
                                  </a>

                                  <a class="lity-link" data-lity href="<?php the_field('product_image_3')?>">
                                    <div class="mobile-thumb" style="background-image:url('<?php the_field('product_image_3')?>');">
                                    </div>
                                  </a>
                              </div>
                            </div>
														<a class="btn blue" href="/how-to-buy">Find A Distributor</a>
														<a class="btn green-link" href="<?php the_field('pdf'); ?>">Download a package insert</a>
												</div>
											</div>
										</div>
									</div>
							</div>
				</div>
			</div>

			<?php echo get_template_part( 'modules/product-sidebar'); ?>
		</div>
	</div>
</div>



<div class="cta cta-blue">
		<div class="inner">
			<h2>Make the most of your oral contrast budget.</h2>
			<p>Learn more about how you can save money on Vanilla SilQ CT Barium.</p>
			<a id="request" href="/request-product-information?pid=<?php echo get_the_ID(); ?>&amp;cat=<?php echo $parentCat = str_replace(' ', '', $parent->slug); ?>" class="btn white">Request Product Information</a>
		</div>
</div>


	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
