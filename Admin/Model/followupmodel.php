<?php
class Enqfollowup 
{
    private $followupid;
    private $followup_enq_id ;
    private $followup_comments;
    private $followup_by;
    private $followup_on;
    private $enqStatus;
    private $table_name="enquiry_followup";
    function set_followupOn($followupOn)
    {
        $this->followup_on=$followupOn;
    }
    function get_followupOn()
    {
        return $this->followup_on;
    }
   function set_followid($followid)
    {
        $this->followupid=$followid;
    }
    function get_followid()
    {
        return $this->followupid;
    }

    function set_followenqid($followenqid)
    {
        $this->followup_enq_id=$followenqid;
    }
    function get_followenqid()
    {
        return $this->followup_enq_id;
    }

    function set_followcomment($followcomment)
    {
        $this->followup_comments=$followcomment;
    }
    function get_followcomment()
    {
        return $this->followup_comments;
    }

    function set_followupBy($followupBy)
    {
        $this->followup_by=$followupBy;
    }
    function get_followupBy()
    {
        return $this->followup_by;
    }

}