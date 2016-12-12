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
        "DropdownField",
        "OptionsetField",
        //"TreeDropdownField",
        //"TreeMultiSelectField",
        "ListboxField",
        "CheckboxSetField",
        "FileField",
        //"UploadField",
        //"AssetField",
        // TODO: add/test
        //"FileField",
        //"MoneyField",
        //"DatetimeField",
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

                $optionSetConfigs = $rsvpField->getManyManyComponents('OptionSetConfigs');
                $optionSetConfigArray = array();
                foreach ($optionSetConfigs as $optionSetConfig) {
                    $optionSetConfigArray[$optionSetConfig->Value] = $optionSetConfig->Name;
                }

                if ($rsvpField->Label)
                    $field = $className::create($rsvpField->Name, $rsvpField->Label); //,$source, $value
                else
                    $field = $className::create($rsvpField->Name); //, $source, $value


                // ->setHasEmptyDefault(true);
                if (method_exists($field, 'setEmptyString')) {
                    $field->setHasEmptyDefault(true);
                    //$field->setEmptyString('');
                }

                $setConfigs = $rsvpField->getManyManyComponents('DefaultSetConfigs');

                foreach ($setConfigs as $setConfig) {

                    // apply all defined setConfig on the given field
                    try {
                        $field->setConfig('' . $setConfig->Name, $setConfig->Value);
                        $setConfig->HasError = 0;
                    } catch (Exception $e) {
                        $setConfig->HasError = 1;
                    }
                    $setConfig->write();

                }

                // temporary implementation to store value of simple fields
                // TODO: refactor
                $cookieName = $formActionName . '_' . $rsvpField->Name;

                // attempt to set options
                if ($optionSetConfigArray && count($optionSetConfigArray) > 0) {

                    try {
                        $field->setSource($optionSetConfigArray);
                        DBLogger::log('$rsvpField->DefaultValue: ' . $rsvpField->DefaultValue, __METHOD__, SS_LOG_ERROR);

                    } catch (Exception $e) {
                        $logMessage = "Invalid Source " . $e->getMessage();
                        DBLogger::log($logMessage, __METHOD__, SS_LOG_ERROR);
                    }

                }

                // attempt to set default value
                try {
                    if ($rsvpField->DefaultValue && in_array($rsvpField->DefaultValue, $optionSetConfigArray)) {
                        $field->setValue($rsvpField->DefaultValue);
                    }
                } catch (Exception $e) {
                }

                // check if cached values available in cookie (for Frontend only)
                if (!self::inBackend() && $rsvpField->DoRemember && $storedValue = Cookie::get($cookieName)) {
                    $field->setValue($storedValue);
                } else if ($rsvpField->DefaultValue) {
                    $field->setValue($rsvpField->DefaultValue);
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