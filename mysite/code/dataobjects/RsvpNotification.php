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

    public static $defaults = array('NotificationDeliveries' => 0, 'NotificationDeliveryFailures' => 0);

    public static $has_one = array(
        'Event' => 'Event',
        'Member' => 'Member',
    );

    public static $summary_fields = array(
        'Title',
        'Email',
        'IsActive',
        'NotificationDeliveries',
        'NotificationDeliveryFailures'
    );


    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            CheckboxField::create('IsActive'),
            DropdownField::create('NotificateMember', 'Email Source')->setSource(array(0 => 'From String (enter below)', 1 => 'From selected Member'))->setDescription('Will update the fieldlist after saving ')
        );

        // TODO: test replacing implementation below with replaceField
        //   $fields->replaceField('MyField', DropdownField::create('MyField', 'My field'));
        if ($this->NotificateMember) {
            $fields->add(DropdownField::create('MemberID', 'Member')->setSource(Member::get()->map('ID', 'Name')));
        } else {
            $fields->add(EmailField::create('Email'));
        }

        return $fields;
    }


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
