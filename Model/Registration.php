
<?php 
   class Registration 
  {
    private $id;
    private $Name;
    private $Email;
    private $Phone;
    private $Trainings;
    private $Internship;
    private $Services;
    private $Demo;
    private $Qualification;
    private $table_name="candidates";

    function set_id($id) {
      $this->id = $id;
    }
    function get_id() {
      return $this->id;
    }

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
  function set_internship($internship) {
    $this->Internship = $internship;
  }
  function get_internship() {
    return $this->Internship;
  }
  function set_services($services) {
    $this->Services = $services;
  }
  function get_services() {
    return $this->Services;
  }
  function set_demo($demo) {
    $this->Demo = $demo;
  }
  function get_demo() {
    return $this->Demo;
  }
  function set_qualification($qualification) {
    $this->Qualification = $qualification;
    echo $this->Qualification;
  }
  function get_qualification() {
    return $this->Qualification;
  }
 }
?>
