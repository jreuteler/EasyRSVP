<?php

class RsvpNotification extends DataObject
{

    public static $db = array(
        'Title' => 'Varchar',
        'NotificateMember' => 'Boolean',
        'Email' => 'Varchar',
        'IsActive' => 'Boolean',
        'NotificationDeliveries' => 'Int',
        'NotificationDeliveryFailures' => 'Int'

    );

    static $defaults = array('NotificationDeliveries' => 0, 'NotificationDeliveryFailures' => 0);

    public static $has_one = array(
        'Event' => 'Event',
        'Member' => 'Member',
    );


    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            CheckboxField::create('IsActive'),
            CheckboxField::create('NotificateMember')
        );


        // TODO: replace above implementation with replaceField
        //   $fields->replaceField('MyField', DropdownField::create('MyField', 'My field'));
        if ($this->NotificateMember) {
            //$fields->add(DropdownField::create('Member', 'Member')->setSource(Member::get())); //->map('ID', 'Email')));
            $fields->add(DropdownField::create('MemberID', 'Member')->setSource(Member::get()->map('ID', 'Email')));
        } else {
            $fields->add(EmailField::create('Email'));
        }

        return $fields;
    }

    public static $summary_fields = array(
        'Title',
        'Email',
        'IsActive',
        'NotificationDeliveries',
        'NotificationDeliveryFailures'
    );


    public function Email()
    {
        if ($this->NotificateMember) {
            return $this->Member()->Email;
        }

        return $this->Email;
    }

    public function IsActive()
    {
        if ($this->IsActive)
            return 'Yes';
        else
            return 'No';
    }


}
