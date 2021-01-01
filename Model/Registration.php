
<?php 
   class Registration 
  {
    private $Name;
    private $Email;
    private $Phone;
    private $Trainings;
  function set_name($name) {
    $this->Name = $name;
  }
  function get_name() {
    return $this->Name;
  }

  function set_email($email) {
    $this->Email = $email;
  }
  function get_email() {
    return $this->Email;
  }

  function set_phone($phone) {
    $this->Phone = $phone;
  }
  function get_phone() {
    return $this->Phone;
  }

  function set_trainings($trainings) {
    $this->Trainings = $trainings;
  }
  function get_trainings() {
    return $this->Trainings;
  }
 }
?>
