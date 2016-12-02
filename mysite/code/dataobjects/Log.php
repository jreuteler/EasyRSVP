<?php

class Log extends DataObject
{

    public static $db = array(
        'Category' => 'Enum(array("ERROR","ACCESS","GENERAL", "FILES", "CONFIGURATION"), "GENERAL")',
        'Method' => 'Varchar',
        'Action' => 'Varchar',
        'Source' => 'Varchar(2)',
        'UserAgent' => 'Varchar',
        'IpAddress' => 'Varchar',
        'Message' => 'Text',

    );

    private static $has_one = array(
        'Member' => 'Member',
    );

    public static $summary_fields = array(
        //'Method',
        'Category',
        'Source',
        'Action',
        'Message',
        'Created',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        return $fields;
    }
    
    function canCreate($member = NULL)
    {
        return false;
    }

    function canEdit($member = NULL)
    {
        return false;
    }

}
