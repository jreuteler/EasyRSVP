<?php

class DefaultSetConfig extends DataObject
{

    private static $db = array(
        'Title' => 'Varchar',
        'Name' => 'Varchar',
        'Value' => 'Varchar',
    );

    private static $belongs_many_many = array(
        'RsvpFields' => 'RsvpField'
    );

    private static $summary_fields = array(
        'Title',
        'Name',
        'Value'
    );


    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextField::create('Name', 'SetConfig Name'),
            TextareaField::create('Value', 'SetConfig Value')

        );

        return $fields;
    }


}