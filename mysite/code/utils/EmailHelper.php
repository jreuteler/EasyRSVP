<?php

class EmailHelper
{

    public static function sendRegistrationNotification ($to, $subject, $template, $event, $data) {
        $email = new Email();
        $email
        //->setFrom($from)
        ->setTo($to)
        ->setSubject($subject)
        ->setTemplate($template)
        ->populateTemplate(new ArrayData(array(
            'Event' => $event,
            'Data' => $data

        )));

        return $email->send();
    }

}