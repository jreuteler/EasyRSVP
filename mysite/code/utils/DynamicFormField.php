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

    public static function createFieldFromRsvpConfig($formActionName, $rsvpField)
    {
        if (!DynamicFormField::$dynamicFieldTypes[$rsvpField->FieldType]) {
            return;
        }

        $className = DynamicFormField::$dynamicFieldTypes[$rsvpField->FieldType];

        if (class_exists($className) && is_subclass_of(new $className('test'), 'FormField') && in_array($className, self::$dynamicFieldTypes)) {

            if ($rsvpField->Label)
                $field = $className::create($rsvpField->Name, $rsvpField->Label);
            else
                $field = $className::create($rsvpField->Name);

            $setConfigs = $rsvpField->getManyManyComponents('DefaultSetConfigs');

            foreach ($setConfigs as $setConfig) {

                // apply all defined setConfig on the given field
                $field->setConfig('' . $setConfig->Name, $setConfig->Value);  // TODO: check for invalid names/values
            }

            // temporary implementation to store value of simple fields
            // TODO: refactor & extend
            $cookieName = $formActionName . '_' . $rsvpField->Name;

            if (!self::inBackend() && $rsvpField->DoRemember && $storedValue = Cookie::get($cookieName)) {
                $field->value = $storedValue;
            } else if ($rsvpField->DefaultValue) {
                $field->value = $rsvpField->DefaultValue;
            }

            return $field;
        }

    }


    public static function inBackend()
    {
        return is_subclass_of(Controller::curr(), "LeftAndMain");
    }

}