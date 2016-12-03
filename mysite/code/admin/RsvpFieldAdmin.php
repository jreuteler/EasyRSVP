<?php

class RsvpFieldAdmin extends ModelAdmin {

	private static $menu_title = 'Fields for RSVP';

	private static $url_segment = 'rsvpfields';

	private static $managed_models = array (
		'RsvpField'
	);

	private static $menu_icon = 'mysite/icons/rsvpfields.png';
}