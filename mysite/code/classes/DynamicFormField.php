<?php


class DynamicFormField
{

    public static $dynamicFieldTypes = array(
        "TextField",
        "TextareaField",
        "NumericField",
        "DateField",
        "Timefield",
        "EmailField",
        "PhonenumberField",
        "FileField",
        "HiddenField",
        "LabelField",

        // TODO: add/test
        //"MoneyField",
        //"DatetimeField",
        //"OptionsetField",
        //"UploadField",
        //"AssetField",
        //"CheckboxSetField",
        //"TreeDropdownField",
        //"TreeMultiSelectField",
        //"ListboxField",
    );

    public static function createFieldFromRsvpConfig($formActionName, $rsvpField, $setConfigs)
    {
        if(!DynamicFormField::$dynamicFieldTypes[$rsvpField->FieldType]) {
            return;
        }

        $className = DynamicFormField::$dynamicFieldTypes[$rsvpField->FieldType];
        if (in_array($className, self::$dynamicFieldTypes)) {

            if ($rsvpField->Label)
                $field = $className::create($rsvpField->Name, $rsvpField->Label);
            else
                $field = $className::create($rsvpField->Name);

            foreach ($setConfigs as $setConfig) {

                // apply all defined setConfig on the given field
                $field->setConfig('' . $setConfig->Name, $setConfig->Value);  // TODO: check for invalid names/values

            }

            // temporary implementation to store value of simple fields
            // TODO: refactor & extend
            $cookieName = $formActionName.'_'.$rsvpField->Name;

            if( $rsvpField->DoRemember && $storedValue = Cookie::get($cookieName) ) {
                $field->value = $storedValue;
            } else if($rsvpField->DefaultValue) {
                $field->value = $rsvpField->DefaultValue;
            }

            return $field;
        }

    }

}