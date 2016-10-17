<?php
/**
 * scripts.php
 *
 * Loads scripts and styles
 *
 * @package Offset\Assets
 * @author Paul Graham <paul@bytefair.com>
 * @license http://opensource.org/licenses/MIT
 * @since 0.1.0
 */

function offset_load_assets()
{
  // load assets here?
}
add_action( 'wp_enqueue_scripts', 'offset_load_assets' );
