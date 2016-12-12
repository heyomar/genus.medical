<?php if (!defined('ABSPATH') || !class_exists('NF_Abstracts_Action')) exit;


/**
 * Class NF_Action_MandrillProcessing
 *
 * generated using: http://developer.ninjaforms.com/kozo/
 */
final class NF_MandrillProcessing_Actions_MandrillProcessing extends NF_Abstracts_Action
{
  /**
   * @var string
   */
  protected $_name = 'mandrill-processing';

  /**
   * @var array
   */
  protected $_tags = array();

  /**
   * @var string
   */
  protected $_timing = 'normal';

  /**
   * @var int
   */
  protected $_priority = '10';

  /**
   * Constructor
   */
  public function __construct()
  {
    parent::__construct();

    $this->_nicename = __('Mandrill Processing Action', 'ninja-forms');
  }

  /*
  * PUBLIC METHODS
  */

  public function save($action_settings)
  {

  }


  public function process($action_settings, $form_id, $data)
  {

    $fields = $data['fields'];
    $payload = array();

    foreach ($fields as $field) {

      $field_key = $field['key'];
      $field_value = $field['value'];

      switch ($field_key) {
        case "your_name":
          $payload['sender_name'] = $field_value;
          break;
        case "your_email_address":
          $payload['sender_email'] = $field_value;
          break;
        case "recipients_email_address":
          $payload['rcpt_email'] = $field_value;
          break;
        case "subject_line":
          $payload['subject'] = $field_value;
          break;
        case "message":
          $payload['msg'] = $field_value;
          break;
        case "link":
          $payload['link'] = $field_value;
          break;
      }
    }

    send_mandrill_msg($payload);
    return $data;
  }
}

/**
 * @param $payload
 * @throws Mandrill_Error
 *
 * Refer to https://mandrillapp.com/api/docs/messages.php.html to see the available options to customize the HTML email.
 *
 * This looks pretty useful, especially if templates have been defined in Mandrill:
 * https://mandrillapp.com/api/docs/messages.php.html#method=send-template
 */

function send_mandrill_msg($payload)
{

  $now = date('Y-m-d H:i:s');
  $api_key = 'l2s5YTd8VHGZS1tl2Jej7g';

  $msg_html = render_html($payload);
  $msg_text = return_msg_text($payload);

// The following are required if you want to send the asset as a PDF
//  $attachment = file_get_contents($payload['link']);
//  $attachment_encoded = base64_encode($attachment);

  try {
    $mandrill = new Mandrill($api_key);
    $message = array(
      'html' => $msg_html,
      'text' => $msg_text,
      'subject' => $payload['subject'],
      'from_email' => 'message.no-reply@seedappliedsolutions.com',
      'from_name' => $payload['sender_name'],
      'to' => array(
        array(
          'email' => $payload['rcpt_email'],
          'type' => 'to'
        )
      ),
      'headers' => array('Reply-To' => 'message.no-reply@seedappliedsolutions.com'),
      'important' => false,
      'track_opens' => null,
      'track_clicks' => null,
      'auto_text' => null,
      'auto_html' => null,
      'inline_css' => null,
      'url_strip_qs' => null,
      'preserve_recipients' => null,
      'view_content_link' => null,
      'tracking_domain' => null,
      'signing_domain' => null,
      'return_path_domain' => null,
      'merge' => true,
      'merge_language' => 'mailchimp',
      // How to send the Asset as a PDF attachment.
//      'attachments' => array(
//        array(
//          'type' => 'application/pdf',
//          'name' => 'myfile.pdf',
//          'content' => $attachment_encoded
//        )
//      ),
    );
    $async = false;
    $ip_pool = 'Main Pool';
    $send_at = $now;
    $mandrill->messages->send($message, $async, $ip_pool, $send_at);

  } catch (Mandrill_Error $e) {
    // Mandrill errors are thrown as exceptions
    echo 'A mandrill error occurred: ' . get_class($e) . ' - ' . $e->getMessage();
    // A mandrill error occurred: Mandrill_Unknown_Subaccount - No subaccount exists with the id 'customer-123'
    throw $e;
  }

}

function render_html($payload)
{
  ob_start(); ?>

  <p><?= $payload['msg'] ?></p>
  <p><a href="<?= $payload['link']; ?>">Link To Asset</a></p>
  <p>Sent to you by: <a href="<?= $payload['sender_email'] ?>"><?= $payload['sender_name'] ?></a></p>
  <?php
  $output = ob_get_contents();
  ob_end_clean();
  return $output;
}

function return_msg_text($payload)
{
  $output = $payload['msg'] . "Asset Link: " . $payload['link'] . ", Sent by: " . $payload['sender_name'] . ", " . $payload['sender_email'];
  return $output;
}