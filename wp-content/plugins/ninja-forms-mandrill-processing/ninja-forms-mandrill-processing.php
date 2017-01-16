<?php if ( ! defined( 'ABSPATH' ) ) exit;
include( plugin_dir_path( __FILE__ ) . 'lib/Mandrill.php');
/*
 * Plugin Name: Ninja Forms - Mandrill Processing
 * Plugin URI: http://genusmedical.com/
 * Description: This adds an action to process the Ninja Forms submissions using Mandrill.
 * Version: 3.0.0
 * Author: Zack Bishop
 * Author URI: 
 * Text Domain: ninja-forms-mandrill-processing
 *
 * Copyright 2016 Zack Bishop.
 */

if( version_compare( get_option( 'ninja_forms_version', '0.0.0' ), '3', '<' ) || get_option( 'ninja_forms_load_deprecated', FALSE ) ) {

    //include 'deprecated/ninja-forms-mandrill-processing.php';

} else {

    /**
     * Class NF_MandrillProcessing
     */
    final class NF_MandrillProcessing
    {
        const VERSION = '0.0.1';
        const SLUG    = 'mandrill-processing';
        const NAME    = 'Mandrill Processing';
        const AUTHOR  = 'Zack Bishop';
        const PREFIX  = 'NF_MandrillProcessing';

        /**
         * @var NF_MandrillProcessing
         * @since 3.0
         */
        private static $instance;

        /**
         * Plugin Directory
         *
         * @since 3.0
         * @var string $dir
         */
        public static $dir = '';

        /**
         * Plugin URL
         *
         * @since 3.0
         * @var string $url
         */
        public static $url = '';

        /**
         * Main Plugin Instance
         *
         * Insures that only one instance of a plugin class exists in memory at any one
         * time. Also prevents needing to define globals all over the place.
         *
         * @since 3.0
         * @static
         * @static var array $instance
         * @return NF_MandrillProcessing Highlander Instance
         */
        public static function instance()
        {
            if (!isset(self::$instance) && !(self::$instance instanceof NF_MandrillProcessing)) {
                self::$instance = new NF_MandrillProcessing();

                self::$dir = plugin_dir_path(__FILE__);

                self::$url = plugin_dir_url(__FILE__);

                /*
                 * Register our autoloader
                 */
                spl_autoload_register(array(self::$instance, 'autoloader'));
            }
            
            return self::$instance;
        }

        public function __construct()
        {
            /*
             * Required for all Extensions.
             */
            add_action( 'admin_init', array( $this, 'setup_license') );

            /*
             * Optional. If your extension creates a new field interaction or display template...
             */
            add_filter( 'ninja_forms_register_fields', array($this, 'register_fields'));

            /*
             * Optional. If your extension processes or alters form submission data on a per form basis...
             */
            add_filter( 'ninja_forms_register_actions', array($this, 'register_actions'));

            /*
             * Optional. If your extension collects a payment (ie Strip, PayPal, etc)...
             */
            add_filter( 'ninja_forms_register_payment_gateways', array($this, 'register_payment_gateways'));
        }

        /**
         * Optional. If your extension creates a new field interaction or display template...
         */
        public function register_fields($actions)
        {
            $actions[ 'mandrill-processing' ] = new NF_MandrillProcessing_Fields_MandrillProcessing(); // includes/Fields/MandrillProcessing.php

            return $actions;
        }

        /**
         * Optional. If your extension processes or alters form submission data on a per form basis...
         */
        public function register_actions($actions)
        {
            $actions[ 'mandrill-processing' ] = new NF_MandrillProcessing_Actions_MandrillProcessing(); // includes/Actions/MandrillProcessing.php

            return $actions;
        }

        /**
         * Optional. If your extension collects a payment (ie Strip, PayPal, etc)...
         */
        public function register_payment_gateways($payment_gateways)
        {
            $payment_gateways[ 'mandrill-processing' ] = new NF_MandrillProcessing_PaymentGateways_MandrillProcessing(); // includes/PaymentGateways/MandrillProcessing.php

            return $payment_gateways;
        }

        /*
         * Optional methods for convenience.
         */

        public function autoloader($class_name)
        {
            if (class_exists($class_name)) return;

            if ( false === strpos( $class_name, self::PREFIX ) ) return;

            $class_name = str_replace( self::PREFIX, '', $class_name );
            $classes_dir = realpath(plugin_dir_path(__FILE__)) . DIRECTORY_SEPARATOR . 'includes' . DIRECTORY_SEPARATOR;
            $class_file = str_replace('_', DIRECTORY_SEPARATOR, $class_name) . '.php';

            if (file_exists($classes_dir . $class_file)) {
                require_once $classes_dir . $class_file;
            }
        }
        
        /**
         * Template
         *
         * @param string $file_name
         * @param array $data
         */
        public static function template( $file_name = '', array $data = array() )
        {
            if( ! $file_name ) return;

            extract( $data );

            include self::$dir . 'includes/Templates/' . $file_name;
        }
        
        /**
         * Config
         *
         * @param $file_name
         * @return mixed
         */
        public static function config( $file_name )
        {
            return include self::$dir . 'includes/Config/' . $file_name . '.php';
        }

        /*
         * Required methods for all extension.
         */

        public function setup_license()
        {
            if ( ! class_exists( 'NF_Extension_Updater' ) ) return;

            new NF_Extension_Updater( self::NAME, self::VERSION, self::AUTHOR, __FILE__, self::SLUG );
        }
    }

    /**
     * The main function responsible for returning The Highlander Plugin
     * Instance to functions everywhere.
     *
     * Use this function like you would a global variable, except without needing
     * to declare the global.
     *
     * @since 3.0
     * @return {class} Highlander Instance
     */
    function NF_MandrillProcessing()
    {
        return NF_MandrillProcessing::instance();
    }

    NF_MandrillProcessing();
}