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
        /*
         * create cms fields depending on the dynamically defined rsvp_fields, populate
         * them with the serialised data and lastly add a field with all the form values not defined
         * in the lastest rsvp field configuration for the given event
         */
        // TODO: implement edit functionality of serialised field values through this form


        $fields = FieldList::create(TabSet::create('Root'));
        $rsvpFields = $this->Event()->getManyManyComponents('RsvpFields')->sort('SortOrder');
        $fields->addFieldsToTab('Root.Registration', ReadonlyField::create('FormFieldVersion'));

        $data = unserialize($this->Data);

        foreach ($rsvpFields as $rsvpField) {

            if ($field = DynamicFormField::createFieldFromRsvpConfig(EventPage_Controller::$formActionName, $rsvpField)) {
                if (isset($data[$rsvpField->Name])) {
                    $field->value = $data[$rsvpField->Name];
                    unset($data[$rsvpField->Name]);
                }

                $fields->addFieldToTab('Root.Registration', $field);
            }

        }

        // get the rest of the serialised data (those not in latest version of rsvpfields) and make it human readable in a ReadonlyField
        $leftOverFieldString = '';
        foreach ($data as $fieldName => $fieldValue) {
            $leftOverFieldString .= $fieldName . ' = ' . $fieldValue . "\n";
        }

        $leftOverFields = ReadonlyField::create('Other values');
        $leftOverFields->value = $leftOverFieldString;
        $fields->addFieldsToTab('Root.Registration', $leftOverFields);

        // RAW data
        $rawData = ReadonlyField::create('Data');
        $rawData->value = $this->Data;
        $fields->addFieldsToTab('Root.RAW Data', $rawData);


        return $fields;
    }

    // placeholder method to make registration-data (slightly more) readable in the backend
    public function Data()
    {
        $data = unserialize($this->Data);
        $implodedString = '';

        if (is_array($data) && sizeof($data) > 0) {
            $fieldsToIgnore = array('url', 'SecurityID', 'action_doSignup');
            foreach ($data as $name => $value) {
                if (!in_array($name, $fieldsToIgnore)) {

                    if (is_array($value) || is_object($value)) {
                        $implodedString .= $name . ': ' . print_r($value, true) . ' | ';
                    } else {
                        $implodedString .= $name . ': ' . $value . ' | ';
                    }
                }
            }
        }

        return $implodedString;
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