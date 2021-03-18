<?php
class enquery{
public $id;
 public $name;
 public $email;
 public $phone;
 public $qualification;
 public $enqueryFor;
 public function set_Id($IdValue){
    $this->id=$IdValue;
}

public function get_Id(){
    return $this->id;
}
 public function set_name($nameValue){
     $this->name=$nameValue;
 }

 public function get_name(){
     return $this->name;
 }

 public function set_email($emailValue){
     $this->email=$emailValue;
 }

 public function get_email(){
     return $this->email;
 }

 public function set_phone($phoneValue){
     $this->phone=$phoneValue;
 }

 public function get_phone(){
     return $this->phone;
 }
 public function set_qualification($qualificationValue){
     $this->qualification=$qualificationValue;
 }
 public function get_qualification(){
     return $this->qualification;
 }
 public function set_enqueryFor($enqueryForvalue){
     $this->enqueryFor=$enqueryForvalue;
 }
 public function get_enqueryFor(){
     return $this->enqueryFor;
 }
 
}
?>