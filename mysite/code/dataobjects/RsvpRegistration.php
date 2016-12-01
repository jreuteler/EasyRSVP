<?php

class RsvpRegistration extends DataObject
{

    private static $db = array(
        'FormFieldVersion' => 'Int',
        'Data' => 'Text',

    );

    private static $has_one = array(
        'Event' => 'Event',
    );

    private static $summary_fields = array(
        //'FormFieldVersion',
        'Data',
        'Created'
    );


    public function getCMSFields()
    {
        $fields = FieldList::create(
            ReadonlyField::create('FormFieldVersion'),
            TextareaField::create('Data', 'Serialised data')
        );

        return $fields;
    }

    // placeholder method to make registration-data (slightly more) readable in the backend
    public function Data()
    {
        $data = unserialize($this->Data);
        $implodedString = '';
        $fieldsToIgnore = array('url', 'SecurityID', 'action_doSignup');
        foreach ($data as $name => $value) {
            if ( !in_array($name, $fieldsToIgnore) ) {
                $implodedString .= $name . ': ' . $value . ' | ';
            }
        }

        return $implodedString;
    }



}