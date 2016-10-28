<?php get_header(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
					<div class="hero">
								<h1 class="title">About Us</h1>
								<p class="copy">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed sapien quam. Sed dapibus est id enim facilisis, at posuere turpis adipiscing. Quisque sit amet dui dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed sapien quam. Sed dapibus est id enim facilisis, at posuere turpis adipiscing. Quisque sit amet dui dui.</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="box">
					<div class="ourmission mxw-900-center">
						<h4 class="title small">Our Mission</h4>
						<p class="copy">Genus Medical was founded on the belief that healthcare reform means more than the work taking place in our nation's capital. We believe there is a need for companies to partner with healthcare providers, as part of a shared responsibility to provide greater value without compromising clinical excellence.</p>
					</div>
				</div>
			</div>
		</div>

<div class="mangement">
	<h4 class="title small">Mangement</h4>
	<div class="row mxw-1100-center">
		<div class="col-xs-12 col-sm-4">
			<div class="box">
				<div class="inner">
					<div style="background-image: url('http://placehold.it/300x250')" class="img"></div>
					<h4 class="name">Name Here</h4>
					<p class="bio">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
				</div>
			</div>
		</div>

		<div class="col-xs-12 col-sm-4">
			<div class="box">
				<div class="inner">

					<div style="background-image: url('http://placehold.it/300x250')" class="img"></div>
					<h4 class="name">Name Here</h4>
					<p class="bio">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
				</div>
			</div>
		</div>

		<div class="col-xs-12 col-sm-4">
			<div class="box">
				<div class="inner">
					<div style="background-image: url('http://placehold.it/300x250')" class="img"></div>
					<h4 class="name">Name Here</h4>
					<p class="bio">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
				</div>
			</div>
		</div>
	</div>
</div>




	<?php get_template_part('modules/cta-green');?>
	<?php endwhile; ?>
	<?php endif ?>
<?php get_footer(); ?>