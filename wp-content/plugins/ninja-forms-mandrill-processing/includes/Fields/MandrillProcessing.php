<?php if ( ! defined( 'ABSPATH' ) ) exit;

/**
 * Class NF_Field_MandrillProcessing
 */
class NF_MandrillProcessing_Fields_MandrillProcessing extends NF_Fields_Textbox
{
    protected $_name = 'mandrill-processing';

    protected $_section = 'common';

    protected $_type = 'textbox';

    protected $_templates = 'textbox';

    public function __construct()
    {
        parent::__construct();

        $this->_nicename = __( 'Mandrill Processing  Field', 'ninja-forms' );
    }
}