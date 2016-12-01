<?php


class EventPage extends Page
{

    private static $has_one = array(
        'Event' => 'Event',
    );


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', DropdownField::create(
            'EventID',
            'Event',
            Event::get()->map('ID', 'Title')
        )->setEmptyString('-- None --'), 'Content');

        return $fields;
    }


}

class EventPage_Controller extends Page_Controller
{

    private static $allowed_actions = array(
        'SignUpForm',
    );

    private static $formActionName = 'doSignup';

    public function SignUpForm()
    {
        $dynamicFields = array();
        $rsvpFields = $this->Event()->getManyManyComponents('RsvpFields')->sort('SortOrder');
        foreach ($rsvpFields as $rsvpField) {

            $setConfigs = $rsvpField->getManyManyComponents('DefaultSetConfigs');
            $dynamicField = DynamicFormField::createFieldFromRsvpConfig(self::$formActionName, $rsvpField, $setConfigs);

            if ($dynamicField)
                $dynamicFields[] = $dynamicField;

        }

        $form = Form::create(
            $this,
            __FUNCTION__, //'SignUpForm'
            FieldList::create(
                $dynamicFields
            ),
            FieldList::create(
                FormAction::create(self::$formActionName, 'Sign up')
                    ->setUseButtonTag(true)
                    ->addExtraClass('btn btn-default-color btn-lg')
            )
        //RequiredFields::create('Name','Email','Comment') // TODO: validate, get those fields from RSVP Table

        );

        $data = Session::get("FormData.{$form->getName()}.data");

        return $data ? $form->loadDataFrom($data) : $form;

    }


    public function doSignUp($data, $form)
    {
        Session::set("FormData.{$form->getName()}.data", $data);
        $rsvpFields = $this->Event()->getManyManyComponents('RsvpFields')->sort('SortOrder');
        foreach ($rsvpFields as $rsvpField) {

            if ($rsvpField->DoRemember) {
                // temporary implementation to retrieve value of simple fields
                $cookieName = self::$formActionName . '_' . $rsvpField->Name;
                $formField = $form->Fields()->fieldByName($rsvpField->Name);
                Cookie::set($cookieName, $formField->value);
            }

        }

        $registration = RsvpRegistration::create();
        $registration->EventID = $this->Event()->ID;
        $registration->FormFieldVersion = $this->Event()->FormFieldVersion;
        $registration->Data = serialize($data);

        // $form->saveInto($signUp);
        $registration->write();

        Session::clear("FormData.{$form->getName()}.data");
        $form->sessionMessage('Thanks for signing up!', 'good');

        return $this->redirectBack();

    }


    public function AvailableSpots()
    {
        return $this->Event()->AvailableSpots();
    }

}


