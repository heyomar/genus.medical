<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php wp_title(); ?></title>
		<link rel="stylesheet" type="text/css" href="https://cloud.typography.com/7547052/7892972/css/fonts.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bundle.css" />
		<?php wp_head(); ?>

	</head>

	<body <?php body_class(); ?>>
		<nav role="navigation">
			<div class="nav__logo"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/nav__logo.svg"></div>
			<?php wp_nav_menu( array( 'theme_location' => 'main-navigation' ) ); ?>
			<a href="#" class="btn green">Email Sign Up</a>
			<a href="#" class="btn green">Request Product Information</a>
		</nav>
	<main>