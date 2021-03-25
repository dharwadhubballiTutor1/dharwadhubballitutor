<?php 
   class Fees
  {
    private $StudentName;
    private $CourseOpted;
    private $Phone;
    private $Admissionid;
    private $Courseid;
    private $TotalFees;
    private $PaidFees;
    private $PendingFees;
    private $Feesplan;
    private $DueDate;
    private $PaymentMode;
    private $PaymentDescription;
    private $Modified_Date;
    private $table_name="fees";
    
    function set_admitid($admitid) {
      $this->Admissionid = $admitid;
     }
     function get_admitid() {
      return $this->Admissionid;
     }
     
     function set_courseid($courseid) {
      $this->Courseid = $courseid;
     }
     function get_courseid() {
      return $this->Courseid;
     }

   function set_tfees($tfees) {
    $this->TotalFees = $tfees;
   }
   function get_tfees() {
    return $this->TotalFees;
   }

   function set_pfees($pfees) {
    $this->PaidFees = $pfees;
   }
   function get_pfees() {
    return $this->PaidFees;
   }

   function set_pendingfees($pendingfees) {
    $this->PendingFees = $pendingfees;
   }
   function get_pendingfees() {
    return $this->PendingFees;
   }

   function set_name($name) {
    $this->StudentName = $name;
   }
   function get_name() {
    return $this->StudentName;
   }

   function set_coursesopted($coursesopted) {
    $this->CourseOpted = $coursesopted;
   }
   function get_coursesopted() {
    return $this->CourseOpted;
   }

   function set_phone($phone) {
    $this->Phone= $phone;
   }
   function get_phone() {
    return $this->Phone;
   }

   function set_feesplan($feesplan) {
    $this->Feesplan = $feesplan;
   }
   function get_feesplan() {
    return $this->Feesplan;
  }

  function set_duedate($duedate) {
    $this->DueDate = $duedate;
  }
  function get_duedate() {
    if($this->DueDate==""){
      return NULL;
    }else{
     return $this->DueDate;
    }
  }

  function set_pmode($pmode) {
    $this->PaymentMode = $pmode;
  }
  function get_pmode() {
    return $this->PaymentMode;
  }

  function set_pdescription($pdescription) {
    $this->PaymentDescription = $pdescription;
    
  }
  function get_pdescription() {
    return $this->PaymentDescription;
  }
  function set_modifieddate($modifieddate) {
    $this->Modified_Date = $modifieddate;
    
  }
  function get_modifieddate() {
    return $this->Modified_Date;
  }
  
 
 

}
?>