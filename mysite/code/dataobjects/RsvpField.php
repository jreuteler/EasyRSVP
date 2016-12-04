<?php

class RsvpField extends DataObject
{
    private static $db = array(
        'Name' => 'Varchar',
        'Label' => 'Varchar',
        'FieldType' => 'Varchar',
        'DataType' => 'Varchar',
        'IsMandatory' => 'Boolean',
        'DoRemember' => 'Boolean',
        'DefaultValue' => 'Varchar',
        //TODO: ->addExtraClass('form-control'),
    );

    private static $many_many = array(
        'Events' => 'Event',
        'DefaultSetConfigs' => 'DefaultSetConfig',
    );

    private static $belongs_many_many = array(
        'Events' => 'Event'
    );
    private static $summary_fields = array(
        'Name',
        'FieldType',
        'IsMandatory',
        'DoRemember',
        'DefaultValue',
        'SetConfig'
    );

    // TODO: validation for fieldname value etc
    public function getCMSFields()
    {

        $fields = FieldList::create(
            TextField::create('Name'),
            TextField::create('Label'),
            DropdownField::create('FieldType', 'FieldType', DynamicFormField::$dynamicFieldTypes),
            TextField::create('DefaultValue'),
            //DropdownField::create('DataType', 'DataType', $arrDataTypes),
            CheckboxField::create('IsMandatory', 'Mandatory'),
            CheckboxField::create('DoRemember', 'Remember value')
        );

        $dynamicField = DynamicFormField::createFieldFromRsvpConfig('Preview', $this);
        if ($dynamicField) {
            $fields->add(LabelField::create('Field-Preview: '));
            $fields->add($dynamicField);
        }

        $fields->add(
            $setConfigs = new GridField(
                'DefaultSetConfigs',
                'DefaultSetConfigs',
                $this->DefaultSetConfigs(),
                GridFieldConfig_RelationEditor::create()
            )

        );

        return $fields;
    }


    public function FieldType()
    {
        if ($label = DynamicFormField::$dynamicFieldTypes[$this->FieldType]) {
            return $label;
        }

        return '';
    }


    public function IsMandatory()
    {
        if ($this->IsMandatory)
            return 'Yes';
        else
            return 'No';
    }

    public function DoRemember()
    {
        if ($this->DoRemember)
            return 'Yes';
        else
            return 'No';
    }


    // create a string with all defined SetConfigs in an easily readable format
    public function SetConfig()
    {
        $strDefaulConfigs = '';
        foreach ($this->DefaultSetConfigs() as $defaultSetConfig) {

            if ($defaultSetConfig->record) {
                $strDefaulConfigs .= 'SetConfig(\'' . $defaultSetConfig->record['Name'] . '\', ';

                // show integer values without hypen and everything else with them
                if (intval($defaultSetConfig->record['Value']) . '' == $defaultSetConfig->record['Value']) {
                    $strDefaulConfigs .= $defaultSetConfig->record['Value'] . '), ';
                } else {
                    $strDefaulConfigs .= '\'' . $defaultSetConfig->record['Value'] . '\'), ';
                }

            }
        }

        $strDefaulConfigs = rtrim($strDefaulConfigs, ', ');

        return $strDefaulConfigs;
    }


}