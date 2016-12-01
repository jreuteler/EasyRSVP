<?php

class Event extends DataObject
{

    private static $db = array(
        'Title' => 'Varchar',
        'Description' => 'Text',
        'HasTime' => 'Boolean',
        'HasEnd' => 'Boolean',
        'StartDate' => 'Datetime',
        'EndDate' => 'Datetime',
        'MaxParticipants' => 'Int',
        //'EntryFee' => 'Money',
        'Description' => 'Text',
        'FormFieldVersion' => 'Int', // TODO: implement logic to increment after every (relevant!) change on the form
    );

    static $defaults = array('FormFieldVersion' => 1);

    private static $has_one = array(
        'HeaderPhoto' => 'Image',
    );

    private static $has_many = array(
        'RsvpRegistrations' => 'RsvpRegistration',
    );

    private static $many_many = array(
        'RsvpFields' => 'RsvpField',
        'EventImages' => 'EventImage',
        'EventFiles' => 'EventFile'
    );

    private static $many_many_extraFields = array(
        'RsvpFields' => array(
            'SortOrder' => 'Int'
        ),
        'EventImages' => array(
            'SortOrder' => 'Int'
        ),
        'EventFiles' => array(
            'SortOrder' => 'Int'
        )
    );

    private static $summary_fields = array(
        'Thumbnail',
        'Title',
        'StartDate',
        'EndDate',
        'MaxParticipants',
        'Registrations',
        'AvailableSpots'
    );

    public function searchableFields()
    {

        return array(
            'Title' => array(
                'filter' => 'PartialMatchFilter',
                'title' => 'Title',
                'field' => 'TextField'
            ),
            'Description' => array(
                'filter' => 'PartialMatchFilter',
                'title' => 'Description',
                'field' => 'TextField'
            ),
            'StartDate' => array(
                'filter' => 'ExactMatchFilter',
                'title' => 'StartDate',
                'field' => DateField::create('StartDate', 'Event-StartDate')->setConfig('dateformat', 'dd.MM.yyyy')->setConfig('showcalendar', true)
            ),
            'EndDate' => array(
                'filter' => 'ExactMatchFilter',
                'title' => 'EndDate',
                'field' => DateField::create('EndDate', 'Event-EndDate')->setConfig('dateformat', 'dd.MM.yyyy')->setConfig('showcalendar', true)
            ),


        );

    }

    public function RsvpFields()
    {
        return $this->getManyManyComponents('RsvpFields')->sort('SortOrder');;
    }


    public function getCMSFields()
    {
        $dateFormat = 'dd.MM.yyyy';
        $timeFormat = 'HH:mm';

        $fields = FieldList::create(TabSet::create('Root'));

        // Event Tab
        if ($this->HasTime) {
            // use DatetimeField when user selected HasTime
            $start = DatetimeField::create('StartDate', 'Event Startdate');
            $start->getDateField()->setConfig('dateformat', $dateFormat)->setConfig('showcalendar', true);
            $start->setTimeField(TimePickerField::create('StartDate[time]'));
            $start->getTimeField()->setConfig('timeformat', $timeFormat);

            $end = DatetimeField::create('EndDate', 'Event Enddate');
            $end->getDateField()->setConfig('dateformat', $dateFormat)->setConfig('showcalendar', true);
            $end->setTimeField(TimePickerField::create('EndDate[time]'));
            $end->getTimeField()->setConfig('timeformat', $timeFormat);

        } else {
            $start = DateField::create('StartDate', 'Event Startdate')->setConfig('dateformat', $dateFormat)->setConfig('showcalendar', true);
            $end = DateField::create('EndDate', 'Event Enddate')->setConfig('dateformat', $dateFormat)->setConfig('showcalendar', true);
        }

        $eventFields = array(
            TextField::create('Title'),
            TextareaField::create('Description'),
            NumericField::create('MaxParticipants'),
            CheckboxField::create('HasTime'),
            CheckboxField::create('HasEnd'),
            $start);

        if ($this->HasEnd) {
            array_push($eventFields, $end);
        }

        $fields->addFieldsToTab('Root.Main', $eventFields);


        // Media Tab
        $upload = UploadField::create(
            'HeaderPhoto',
            'Header Photo'
        );
        $upload->getValidator()->setAllowedExtensions(array(
            'png', 'jpeg', 'jpg', 'gif'
        ));
        $upload->setFolderName('event-photos');


        $gridFieldConfig = GridFieldConfig_RecordEditor::create();
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $photos = new GridField("EventImages", "Event Images", $this->EventImages()->sort("SortOrder"), $gridFieldConfig);

        $gridFieldConfig = GridFieldConfig_RecordEditor::create(); //create(10)
        $gridFieldConfig->addComponent(new GridFieldSortableRows('SortOrder'));
        $files = new GridField("EventFiles", "Event Files", $this->EventFiles()->sort("SortOrder"), $gridFieldConfig);

        $fields->addFieldsToTab('Root.Media', array($upload, $photos, $files));


        // Registrations
        $gridFieldConfig = GridFieldConfig_RecordEditor::create();
        $registrations = new GridField("RsvpRegistrations", "Registrations", $this->RsvpRegistrations(), $gridFieldConfig);

        $fields->addFieldsToTab('Root.Registrations', array($registrations));


        // RSVPFormFields Tab
        $conf = GridFieldConfig_RelationEditor::create();
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $fields->addFieldToTab('Root.Form fields', new GridField('RsvpFields', 'RsvpFields', $this->RsvpFields(), $conf));


        return $fields;
    }


    public function Thumbnail()
    {
        if ($this->HeaderPhoto()->exists()) {
            return $this->HeaderPhoto()->SetWidth(100);
        }

        return ' ';
    }

    public function StartDate()
    {
        if (!$this->HasTime && $this->StartDate) {
            $DateTimeArray = explode(' ', $this->StartDate);
            return $DateTimeArray[0];
        }

        return $this->StartDate;
    }

    public function EndDate()
    {
        if (!$this->HasTime && $this->EndDate) {
            $DateTimeArray = explode(' ', $this->EndDate);
            return $DateTimeArray[0];
        }

        return $this->EndDate;
    }

    public function MaxParticipants()
    {
        if ($this->MaxParticipants) {
            return $this->MaxParticipants;
        }
        return '';
    }

    public function Registrations()
    {
        return sizeOf($this->RsvpRegistrations());
    }

    public function AvailableSpots()
    {
        if ($this->MaxParticipants) {
            return $this->MaxParticipants - sizeOf($this->RsvpRegistrations());
        }
        return '';
    }


}