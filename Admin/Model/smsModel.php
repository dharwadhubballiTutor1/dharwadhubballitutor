<?php
require "../Utilities/textlocal.class.php";
class sms
{
    private $username = "atharshaikh1@gmail.com";
    private $key = "ZDg0ZWJiOGQ4N2E4MjJhNDVhZDEyYzZjZGI1MzJhOTY=";
    private $test = "1";
    private $sender = "DHTENQ";
    private $numbers;
    private $message;

    /**
     * Get the value of username
     */
    public function getUsername()
    {
        return $this->username;
    }
    /**
     * Get the value of key
     */
    public function getKey()
    {
        return $this->key;
    }

    /**
     * Get the value of test
     */
    public function getTest()
    {
        return $this->test;
    }

    /**
     * Get the value of sender
     */
    public function getSender()
    {
        return $this->sender;
    }

    /**
     * Get the value of numbers
     */
    public function getNumbers()
    {
        return $this->numbers;
    }

    /**
     * Set the value of numbers
     */
    public function setNumbers($numbers)
    {
        $this->numbers = $numbers;

        return $this;
    }

    /**
     * Get the value of message
     */
    public function getMessage()
    {
        return $this->message;
    }

    /**
     * Set the value of message
     */
    public function setMessage($message)
    {
        $this->message = $message;

        return $this;
    }

    public function sendSMS()
    {
        $Textlocal = new Textlocal('atharshaikh1@gmail.com', '650d05aea27f2bad20a99358b460a1980388a591d2cebaa63d04e1f03ca83605', false);
     
        $numbers = array(8007961759);
        $sender = 'DHTENQ';
        $message = $this->message;
     
        $response = $Textlocal->sendSms($numbers, 'Hello this is a test message', $sender);
        error_log($response);
 
    }
}
