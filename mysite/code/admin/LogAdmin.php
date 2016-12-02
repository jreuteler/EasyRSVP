<?php

class LogAdmin extends ModelAdmin
{

    private static $menu_title = 'Logs';

    private static $url_segment = 'logs';

    private static $managed_models = array(
        'Log'
    );

    private static $menu_icon = 'mysite/icons/logs.png';


  
}