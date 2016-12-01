<?php

class EventFile extends DataObject
{

    public static $db = array(
        'SortOrder' => 'Int',
        'Title' => 'Varchar',
        'AltText' => 'Varchar',
        'SortOrder' => 'Int',
    );

    public static $has_one = array(
        'File' => 'File',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab("Root.Main", "SortOrder");

        return $fields;
    }

    public static $summary_fields = array(
        'Title' => 'Title',
        'AltText' => 'AltText',
        'GetFileSize' => 'Size'
    );


    public function GetFileSize()
    {
        if ($this->File())
            return $this->File()->getSize();

        return ' ';
    }


}
