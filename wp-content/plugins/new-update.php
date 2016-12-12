<?php

/*
Plugin Name: New Update
Plugin URI:  https://example.com/plugins/new-update.php
Description: Basic Wordpress Plugin to handle an AJAX submission with the hide date time of the home page New Update box.
Version:     20161114
Author:      Lelander.com
Author URI:  http://lelander.com/
License:     GPL2
License URI: https://www.gnu.org/licenses/gpl-2.0.html
Text Domain: wporg
Domain Path: /languages
*/

defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

add_action( 'wp_ajax_nopriv_set_new_update_hide_datetime', 'new_update_set_hide_datetime' );

function new_update_set_hide_datetime() {

	session_start();

	$hideDT = $_POST['hide-date-time'];

	//write to session
	$_SESSION['new-update-hide-date-time'] = $hideDT;

	wp_die(); // this is required to terminate immediately and return a proper response
}