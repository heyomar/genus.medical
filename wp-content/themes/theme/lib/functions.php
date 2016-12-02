<?php
/**
 * wysiwyg.php
 *
 * wysiwyg.php contains addons and customizations to the MCE editor in the
 * WordPress backend.
 *
 * @package Offset
 * @author Paul Graham <paul@bytefair.com>
 * @license http://opensource.org/licenses/MIT
 * @since 0.7.0
 */

/**
 * Conditional function to tell if a page is or is a child of a particular ID
 *
 * @since 0.7.0
 */
function is_tree($pid)
{
  global $post;
  if( is_page() && ($post->post_parent==$pid || is_page($pid)) )
    return true;
  else
    return false;
}

add_action( 'rest_api_init', 'slug_register_meta' );
function slug_register_meta() {
    register_rest_field( 'location',
        'city',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'state',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'zip_code',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'phone_number',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'fax',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'latitude',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'longitude',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );

    register_rest_field( 'location',
        'distributor',
        array(
            'get_callback'    => 'get_distributor',
            'update_callback' => null,
            'schema'          => null,
        )
    );
}

// we're caching this json
function cache_location_json($post_id) {
  if ( wp_is_post_revision( $post_id ) ) {
    return; // if it's just a revision, don't regenerate json
  }
  
  $p = get_post( $post_id );
  if ( $p->post_type == 'location' ) {
    $max_loops = 100; // 100 loops = 10,000 locations
    $page = 1; // let's start at the very beginning
    $url = "http://" . $_SERVER['HTTP_HOST'] . "/wp-json/wp/v2/location?per_page=100&page="; // this page intentionally left blank 
    $all_locs = [];
    
    for ( $i = 1; $i <= $max_loops; $i+=1 ) {
      $locs_json = file_get_contents( $url . $i ); // gimme the page -- better be json!
      $locs = json_decode( $locs_json );
      if ( is_array($locs) && count($locs) > 0 ) {
        array_push( $all_locs, $locs );
      } else {
        // we outta here 
        break;
      }
    }
    // now i got all the locs 
    $write_dir = wp_content_dir() . "/data/";
    file_put_contents( $write_dir . "locations.json", json_encode( $all_locs ) );
  }
		
}
// hook `em
add_action( 'save_post', 'cache_location_json' );


/**
 * Get the value of the "starship" field
 *
 * @param array $object Details of current post.
 * @param string $field_name Name of field.
 * @param WP_REST_Request $request Current request
 *
 * @return mixed
 */
function slug_get_meta( $object, $field_name, $request ) {
    return get_field($field_name, $object[ 'id' ], false);
}

function get_distributor($object, $field_name, $request){
    $distributors =  get_the_terms($object -> ID, 'distributor');

    foreach ($distributors as $d) {
        $d->logo = get_field('logo', $d);
        $d->carries_syringes = get_field('carries_syringes', $d);
        $d->carries_oral_contrast_products = get_field('carries_oral_contrast_products', $d);
        return $d;
    }
}



// Image sizes
add_image_size( 'Rez1080p', 1920, 1080, true );
add_image_size( 'Product-Image-Rez720p', 1280, 720, true );
add_image_size( 'Product-Thumb-Rez480p', 720, 480, true );
