<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

  <?php
  $productCategory = $_GET['cat'];
  $productID = intval($_GET['pid']);
  $productTitle = get_the_title($productID);
  $heroImage = get_field('hero_image', $productID);
  ?>

<div style="
  <?php
  if($heroImage != null)
  echo "background-image:url('" . $heroImage ?>');"  class="bluehero">
	<div class="inner">
    <div class="content mxw-1100-center">
      <span class="category"><?php echo str_replace('-', ' ', $productCategory); ?></span>
	    <div class="name">
      <?php
      if($productTitle !== 'Request Product Information')
       echo str_replace(' ', '&nbsp;',$productTitle);
      ?>
      </div>
    </div>
  </div>
</div>

<div class="content">
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="mxw-1100-center">
					<h2 class="title"><?php the_title(); ?></h2>
					<div class="copy"><?php the_field('body_copy'); ?></div>
				</div>
			</div>
		</div>
	</div>

	<div class="mxw-1100-center">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="box">
						<?php the_content(); ?>
				</div>
			</div>
		</div>
	</div>
</div>



	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
