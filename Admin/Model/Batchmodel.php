<?php
class batch
{
private $Batchid ;
private $Batchname;
private $Trainername;
private $StartDate;
private $EndDate;
private $CreatedBy;
private $ModifiedBy;
private $CreatedDate;
private $ModifiedDate;
private $Ageofbatch;
private $BatchDate;
	

/**
 * Get the value of Batchid
 */
public function getBatchid()
{
return $this->Batchid;
}

/**
 * Set the value of Batchid
 */
public function setBatchid($Batchid): self
{
$this->Batchid = $Batchid;

return $this;
}



public function setStartDate($StartDate): self
{
$this->StartDate = $StartDate;

return $this;
}
public function getStartDate()
{
return $this->StartDate;
}
/**
 * Get the value of EndDate
 */
public function getEndDate()
{
return $this->EndDate;
}

/**
 * Set the value of EndDate
 */
public function setEndDate($EndDate): self
{
$this->EndDate = $EndDate;

return $this;
}

/**
 * Get the value of CreatedBy
 */
public function getCreatedBy()
{
return $this->CreatedBy;
}

/**
 * Set the value of CreatedBy
 */
public function setCreatedBy($CreatedBy): self
{
$this->CreatedBy = $CreatedBy;

return $this;
}



/**
 * Get the value of CreatedDate
 */
public function getCreatedDate()
{
return $this->CreatedDate;
}

/**
 * Set the value of CreatedDate
 */


/**
 * Get the value of ModifiedDate
 */
public function getModifiedDate()
{
return $this->ModifiedDate;
}

/**
 * Set the value of ModifiedDate
 */
public function setModifiedDate($ModifiedDate): self
{
$this->ModifiedDate = $ModifiedDate;

return $this;
}

/**
 * Get the value of ModifiedBy
 */
public function getModifiedBy()
{
return $this->ModifiedBy;
}

/**
 * Set the value of ModifiedBy
 */
public function setModifiedBy($ModifiedBy): self
{
$this->ModifiedBy = $ModifiedBy;

return $this;
}


/**
 * Set the value of CreatedDate
 */
public function setCreatedDate($CreatedDate): self
{
$this->CreatedDate = $CreatedDate;

return $this;
}

/**
 * Get the value of Batchname
 */
public function getBatchname()
{
return $this->Batchname;
}

/**
 * Set the value of Batchname
 */
public function setBatchname($Batchname): self
{
$this->Batchname = $Batchname;

return $this;
}

/**
 * Get the value of Trainername
 */
public function getTrainername()
{
return $this->Trainername;
}

/**
 * Set the value of Trainername
 */
public function setTrainername($Trainername): self
{
$this->Trainername = $Trainername;

return $this;
}

/**
 * Get the value of StartDate
 */


/**
 * Set the value of StartDate
 */

/**
 * Get the value of Ageofbatch
 */
public function getAgeofbatch()
{
return $this->Ageofbatch;
}

/**
 * Set the value of Ageofbatch
 */
public function setAgeofbatch($Ageofbatch): self
{
$this->Ageofbatch = $Ageofbatch;

return $this;
}

/**
 * Get the value of BatchDate
 */
public function getBatchDate()
{
return $this->BatchDate;
}

/**
 * Set the value of BatchDate
 */
public function setBatchDate($BatchDate): self
{
$this->BatchDate = $BatchDate;

return $this;
}
}
?>