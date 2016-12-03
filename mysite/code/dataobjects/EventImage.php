<?php

class EventImage extends DataObject
{

    public static $db = array(
        'SortOrder' => 'Int',
        'Title' => 'Varchar',
        'AltText' => 'Varchar',
        'SortOrder' => 'Int',
        'Width' => 'Int',
        'Height' => 'Int',
    );

    public static $has_one = array(
        'Image' => 'Image',
    );

    private static $belongs_many_many = array(
        'Events' => 'Event'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab("Root.Main", "SortOrder");

        return $fields;
    }

    public static $summary_fields = array(
        'Thumbnail' => 'Thumbnail',
        'Title' => 'Title',
        'AltText' => 'AltText',
        'GetSize' => 'Resolution'
    );

    public function getThumbnail()
    {
        return $this->Image()->CMSThumbnail();
    }

    public function GetSize()
    {
        if ($this->Width && $this->Height)
            return $this->Width . ' x ' . $this->Height;

        return ' ';
    }


}
