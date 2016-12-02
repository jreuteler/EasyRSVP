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

        DBLogger::log('Generating form for frontend...', __METHOD__, SS_GENERAL);

        $dynamicFields = array();
        $rsvpFields = $this->Event()->getManyManyComponents('RsvpFields')->sort('SortOrder');
        foreach ($rsvpFields as $rsvpField) {

            $setConfigs = $rsvpField->getManyManyComponents('DefaultSetConfigs');
            $dynamicField = DynamicFormField::createFieldFromRsvpConfig(self::$formActionName, $rsvpField, $setConfigs);

            if ($dynamicField)
                $dynamicFields[] = $dynamicField;
            else
                DBLogger::log('Field could not be generated from RsvpField configuration (ID: '.$rsvpField->ID.', Name: '.$rsvpField->Name.') could not be generated...', __METHOD__, SS_ERROR);

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
        DBLogger::log(print_r($data, true), __METHOD__, SS_GENERAL);

        // TODO: check if maximum was reached in the meantime and if so, inform user

        Session::set("FormData.{$form->getName()}.data", $data);
        $rsvpFields = $this->Event()->getManyManyComponents('RsvpFields')->sort('SortOrder');

        $emailData = array();
        foreach ($rsvpFields as $rsvpField) {

            $formField = $form->Fields()->fieldByName($rsvpField->Name);
            if ($rsvpField->DoRemember) {
                // temporary implementation to retrieve value of simple fields
                $cookieName = self::$formActionName . '_' . $rsvpField->Name;
                Cookie::set($cookieName, $formField->value);
            }

            $emailData[] = array('Name' => $rsvpField->Name, 'Value' => $formField->value);
        }

        $registration = RsvpRegistration::create();
        $registration->EventID = $this->Event()->ID;
        $registration->FormFieldVersion = $this->Event()->FormFieldVersion;
        $registration->Data = serialize($data);

        // $form->saveInto($signUp);
        $registration->write();

        Session::clear("FormData.{$form->getName()}.data");
        $form->sessionMessage('Thanks for signing up!', 'good');


        // send notifications
        if ($this->Event()->UseNotifications) {

            $notifications = $this->Event()->RsvpNotifications();
            foreach ($notifications as $notification) {

                if ($notification->IsActive) {

                    $recieverEmail = $notification->Email;
                    if ($notification->NotificateMember) {
                        $recieverEmail = $notification->Member()->Email;
                    }

                    echo $notification->Email();

                    $sent = EmailHelper::sendRegistrationNotification($recieverEmail, 'New registration for ' . $this->Event()->Title, 'RsvpNotificationEmail', $this->Event(), $emailData);

                    if($sent) {
                        $notification->NotificationDeliveries++;
                    } else {
                        $notification->NotificationDeliveryFailures++;
                    }
                    $notification->write();

                }

            }
        }

        return $this->redirectBack();

    }


    public function AvailableSpots()
    {
        return $this->Event()->AvailableSpots();
    }

}


