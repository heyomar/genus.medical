<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<div class="bluehero"></div>



<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-8">
				<div class="content">

					<h2 class="title"><?php the_title(); ?></h2>

					<div class="form">
						<?php echo the_content(); ?>
					</div>

				</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-4 nopad">
			<div class="contact-sidebar">

				<div class="inner">
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
					<a href="mailto:customerservice@genusmedical.com">customerservice@<span class="wordbreak">genusmedical.com</span></a> <br/>
					<a href="tel:1-866-468-5157">1-866-468-5157</a> (p)<br/>
					<a href="tel:1-314-899-2953">1-314-899-2953</a> (f)
				</div>

			</div>
			<div class="map"></div>
		</div>
</div>

	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>
