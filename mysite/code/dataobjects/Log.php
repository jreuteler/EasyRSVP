<?php

class Log extends DataObject
{

    public static $db = array(
        'Method' => 'Varchar',
        'Category' => 'Enum(array("ERROR","ACCESS","GENERAL", "FILES", "CONFIGURATION"), "GENERAL")',
        'Message' => 'Text',
        'Action' => 'Varchar',
        'Source' => 'Int',
        'UserAgent' => 'Varchar',
        'IpAddress' => 'Varchar',
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

    public function Source()
    {
        switch ($this->Source) {
            case 1:
                return 'BE';
            case 2:
                return 'FE';
            default;
                return '';
        }
    }


    function canCreate($member = NULL)
    {
        return false;
    }


}
