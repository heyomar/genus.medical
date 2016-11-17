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
        'logo',
        array(
            'get_callback'    => 'slug_get_meta',
            'update_callback' => null,
            'schema'          => null,
        )
    );
}

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
