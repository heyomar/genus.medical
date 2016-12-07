<!DOCTYPE html>
<html <?php language_attributes(); ?>>
		<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name = "format-detection" content = "telephone=no">
		<title><?php wp_title(); ?></title>
		<link rel="stylesheet" type="text/css" href="https://cloud.typography.com/7547052/7892972/css/fonts.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/bundle.css" />
		<?php wp_head(); ?>

		<!-- Google Tag Manager -->
		<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
		new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
		j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
		'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
		})(window,document,'script','dataLayer','GTM-MLRGR8');</script>
		<!-- End Google Tag Manager -->
	</head>

	<body <?php body_class(); ?>>
		<!-- Google Tag Manager (noscript) -->
		<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MLRGR8"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		<!-- End Google Tag Manager (noscript) -->

		<nav role="navigation">
				<div class="inner mxw-1500-center">

					<div class="strip">
						<div class="logo">
							<a href="/">
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/site__logo-green.svg">
							</a>
						</div>
						<?php wp_nav_menu( array( 'theme_location' => 'main-navigation' ) ); ?>

						<div class="desktop-cta">
								<a href="/email-sign-up" class="btn green">Email&nbsp;Sign&nbsp;Up</a>
								<a href="/request-product-information" class="btn green">Request&nbsp;Product&nbsp;Information</a>
							</div>

						<div class="handle">
							<span class="label">Menu</span>
							<span class="arrow">&#9662;</span>
						</div>
					</div>

						<div class="dropdown">
							<div class="mobile-cta">
								<a href="/email-sign-up" class="btn green">Email&nbsp;Sign&nbsp;Up</a>
								<a href="/request-product-information" class="btn green">Request&nbsp;Product&nbsp;Information</a>
							</div>
							<?php wp_nav_menu( array( 'theme_location' => 'main-navigation' ) ); ?>
						</div>

				</div>
		</nav>


	<main>
