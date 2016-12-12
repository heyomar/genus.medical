<?php if ( ! defined( 'ABSPATH' ) ) exit;

class NF_MandrillProcessing_PaymentGateways_MandrillProcessing extends NF_Abstracts_PaymentGateway
{
    protected $_slug = 'mandrill-processing';

    public function __construct()
    {
        parent::__construct();

        $this->_name = __( 'Mandrill Processing  Payment Gateway', 'ninja-forms-paypal-express' );
    }

    public function process( $action_settings, $form_id, $data )
    {
        $total = $this->get_total( $action_settings, $data );

        $data[ 'actions' ][ 'mandrill-processing' ] = array(
            'total' => $total,
        );

        return $data;
    }

    private function get_total( $settings, $data )
    {
        if( isset( $data[ 'new_total' ] ) && $data[ 'new_total' ] ){
            return $data[ 'new_total' ];
        } else {
            return FALSE;
        }
    }
}