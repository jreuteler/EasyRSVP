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

    public static $formActionName = 'doSignup';

    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements

        Requirements::css(EASY_RSVP_BASE . "/css/gallery.css");
        Requirements::javascript("http://thecodeplayer.com/uploads/js/prefixfree.js");
    }

    public function SignUpForm()
    {

        DBLogger::log('Generating form for frontend...', __METHOD__, SS_LOG_GENERAL);

        $dynamicFields = array();
        $rsvpFields = $this->Event()->getManyManyComponents('RsvpFields')->sort('SortOrder');
        foreach ($rsvpFields as $rsvpField) {

            $dynamicField = DynamicFormField::createFieldFromRsvpConfig(self::$formActionName, $rsvpField);

            if ($dynamicField)
                $dynamicFields[] = $dynamicField;
            else
                DBLogger::log('Field could not be generated from RsvpField configuration (ID: ' . $rsvpField->ID . ', Name: ' . $rsvpField->Name . ') could not be generated...', __METHOD__, SS_LOG_ERROR);

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
            ),
            RequiredFields::create(DynamicFormField::getRequiredFields($rsvpFields))

        );

        $data = Session::get("FormData.{$form->getName()}.data");

        return $data ? $form->loadDataFrom($data) : $form;

    }


    public function doSignUp($data, $form)
    {
        DBLogger::log($data, __METHOD__, SS_LOG_GENERAL);

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

                    if ($sent) {
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


