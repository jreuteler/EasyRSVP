<?php

class DefaultSetConfig extends DataObject
{

    private static $db = array(
        'Title' => 'Varchar',
        'Name' => 'Varchar',
        'Value' => 'Varchar',
        'HasError'  => 'Int'
    );

    private static $belongs_many_many = array(
        'RsvpFields' => 'RsvpField'
    );

    public static $defaults = array('HasConfigError' => 0);

    private static $summary_fields = array(
        'Status',
        'Title',
        'Name',
        'Value'
    );


    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextField::create('Name', 'SetConfig Name'),
            TextareaField::create('Value', 'SetConfig Value')

        );

        return $fields;
    }

    public function Status()
    {
        // TODO: find cleaner/shorter  solution
        $folder = Folder::find_or_make('images/db-log');

        if($this->HasError) {

            $image = Image::create(array(
                'Name' => 'Configuration warning',
                'ParentID' => $folder->ID,
                'Filename' => 'mysite/icons/status_warning.png'
            ));

            $image->write();


        } else {
            $image = Image::create(array(
                'Name' => 'Configuration valid',
                'ParentID' => $folder->ID,
                'Filename' => 'mysite/icons/status_ok.png'
            ));

            $image->write();
        }

        if ($image->exists()) {
            return $image->SetWidth(16);
        }

        return '';
    }



}