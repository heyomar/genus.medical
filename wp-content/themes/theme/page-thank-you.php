<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <div class="bluehero"></div>

    <div class="content">
      <div class="inner mxw-900-center">
        <h2 class="title">Thank You</h2>
        <p>We appreciate your interest in our newsletter and look forward to sharing our latest product offerings and upcoming events with you.</p>
      </div>
    </div>

    <div class="cta cta-green">
    		<div class="inner mxw-900-center">
    			<h2>Interested in more info on our products?</h2>
    			<a href="/request-product-information" class="btn white">Request Product Information</a>
    		</div>
    </div>
    
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
