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
        "HiddenField",
        "LabelField",

        // TODO: add/test
        //"FileField",
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
        if (!isset(DynamicFormField::$dynamicFieldTypes[$rsvpField->FieldType])) {
            return false;
        }

        $className = DynamicFormField::$dynamicFieldTypes[$rsvpField->FieldType];

        if (class_exists($className) && is_subclass_of(new $className('test'), 'FormField') && in_array($className, self::$dynamicFieldTypes)) {

            try {
                if ($rsvpField->Label)
                    $field = $className::create($rsvpField->Name, $rsvpField->Label);
                else
                    $field = $className::create($rsvpField->Name);

                $setConfigs = $rsvpField->getManyManyComponents('DefaultSetConfigs');

                foreach ($setConfigs as $setConfig) {

                    // apply all defined setConfig on the given field
                    try {
                        $field->setConfig('' . $setConfig->Name, $setConfig->Value);
                        $setConfig->HasError = 0;
                    } catch (Exception $e) {
                        $setConfig->HasError = 1;
                        $logMessage = "Invalid SetConfig added for field " . $field->Name . " \n
                        - SetConfig(" . $setConfig->Name . ", " . $setConfig->Value . ") not applied. \n
                        Full exception: " . $e->getMessage();
                        DBLogger::log($logMessage, __METHOD__, SS_LOG_ERROR);
                    }
                    $setConfig->write();

                }

                // temporary implementation to store value of simple fields
                // TODO: refactor
                $cookieName = $formActionName . '_' . $rsvpField->Name;

                if (!self::inBackend() && $rsvpField->DoRemember && $storedValue = Cookie::get($cookieName)) {
                    $field->value = $storedValue;
                } else if ($rsvpField->DefaultValue) {
                    $field->value = $rsvpField->DefaultValue;
                }

                return $field;
            } catch (Exception $e) {
            }
        }

        return false;

    }


    public static function getRequiredFields($rsvpFields)
    {
        $requiredFields = array();
        foreach ($rsvpFields as $rsvpField) {

            if ($rsvpField->IsMandatory) {
                $requiredFields[] = $rsvpField->Name;
            }
        }

        return $requiredFields;
    }


    public static function inBackend()
    {
        return is_subclass_of(Controller::curr(), "LeftAndMain");
    }

}