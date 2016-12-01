<?php

class EventAdmin extends ModelAdmin
{

    private static $menu_title = 'Events';

    private static $url_segment = 'events';

    private static $managed_models = array(
        'Event'
    );

    private static $menu_icon = 'mysite/icons/events.png';
}