<?php 
   class Fees
  {
    private $id;
    private $TotalFees;
    private $PaidFees;
    private $Feesplan;
    private $DueDate;
    private $PaymentMode;
    private $PaymentDescription;
    private $table_name="fees";
      

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
    return $this->DueDate;
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

 
 

}
?>