<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<div class="bluehero"></div>



<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-8">
				<div class="content">

					<h2 class="title"><?php the_title(); ?></h2>
					<p>We love hearing what matters most to our customers. Please fill in the form below and someone from our team will respond to you shortly.</p>

					<div class="form">
						<?php echo the_content(); ?>
					</div>

				</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-4 nopad">
			<div class="sidebar">

				<h4 class="title small">Corporate Offices</h4>
				<address>
					<strong>Genus Medical Technologies</strong><br/>
					215 Chesterfield Business Pkwy <br/>
					Chesterfield, MO 63005 <br/>
					<br>
					<strong>Genus Medical Technologies</strong> <br/>
					207 Chesterfield Towne Center <br/>
					Chesterfield, MO 63005 <br/>
					<br>
				</address>

					<strong>Customer Service</strong> <br/>
					<a href="">customerservice@genusmedical.com</a> <br/>
					<a href="tel:1-866-468-5157">1-866-468-5157</a> (p)<br/>
					<a href="tel:1-314-899-2953">1-314-899-2953</a> (f)

			</div>
		</div>
</div>

	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>