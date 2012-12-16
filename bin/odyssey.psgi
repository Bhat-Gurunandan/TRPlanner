#!/usr/bin/env perl

use lib qw{../traveljadoo/lib/};

use strict;
use warnings;

use CGI::Application::Dispatch::PSGI;
use Plack::Builder;
use Plack::App::File;

use Odyssey::Constants;

my $app = CGI::Application::Dispatch::PSGI->as_psgi(

	prefix => 'Odyssey',
	args_to_new => {
		cfg_file => $Odyssey::Constants::confdir . 'Odyssey.conf',
	},
	table => [
		'' => {app => 'Init', rm => 'home'},
		'/' => {app => 'Init', rm => 'home'},
		'getimg_attr/:imgname' => {app => 'Hotels', rm => 'getimg_attr'},
		'city/:city' => {app => 'Hotels', rm => 'cityhotels'},
		'hotel/:hotel' => {app => 'Hotels', rm => 'describe'},
		'state/:state' => {app => 'Hotels', rm => 'statehotels'},
		'themes' => {app => 'Themes', rm => 'main'},
		'themes/:theme' => {app => 'Themes', rm => 'describe'},
		'themes/:theme/:subthemeid' => {app => 'Themes', rm => 'get_subthemecities'},
		'themes/:theme/:subthemeid/:cityid' => {app => 'Themes', rm => 'get_citydesc'},
		'special_places' => {app => 'Hotels', rm => 'index'},
		'modules' => {app => 'Region', rm => 'main'},
		'modules/list' => {app => 'Region', rm => 'list'},
		'modules/:module' => {app => 'Itineraries', rm => 'region'},
		'tours/:page?' => {app => 'Tours', rm => 'tours_index'},
		'tourdetails/:tour' => {app => 'Itineraries', rm => 'describe'},
		'moduledetails/:tour' => {app => 'Itineraries', rm => 'describe'},
		'about-us' => {app => 'Init', rm => 'about'},
		'contact-us' => {app => 'Init', rm => 'contact'},
		'search' => {app => 'Hotels', rm => 'namesearch'},
		'hotel-categories' => {app => 'Hotels', rm => 'hoteltypes'},
		'heritage-hotels' => {app => 'Hotels', rm => 'heritagehotels'},
		'home-stays' => {app => 'Hotels', rm => 'homestays'},
		'myfavourites' => {app => 'Itineraries', rm => 'favourites'},
		'why-travel-with-us' => {app => 'Init', rm => 'links', text => 12, webpage => 43},
		'what-to-expect' => {app => 'Init', rm => 'links', text => 21, webpage => 44},
		'how-to-plan-your-trip' => {app => 'Init', rm => 'links', text => 73, webpage => 45},
		'responsible-travel' => {app => 'Init', rm => 'links', text => 13, webpage => 46},
		'before-you-go' => {app => 'Init', rm => 'links', text => 17},
		'privacy-policy' => {app => 'Init', rm => 'legal', text => 16},
		'terms-of-use' => {app => 'Init', rm => 'legal', text => 35},
		'booking-conditions' => {app => 'Init', rm => 'legal', text => 15},
		'meet-the-team' => {app => 'Init', rm => 'people'},
		'add-to-favourites' => {app => 'Init', rm => 'protected_save_favourites'},
		'my-travellers-palm' => {app => 'Init', rm => 'quotes'},
		'request-a-quote' => {app => 'Itineraries', rm => 'quotes'},
		'confirm-quotation' => {app => 'Init', rm => 'quotation_details'},
		'acknowledge-quotation' => {app => 'Init', rm => 'quote_modtours'},
		'checkout' => {app => 'Payment', rm => 'index'},
		'togateway' => {app => 'Payment', rm => 'togateway'},
		'success' => {app => 'Payment', rm => 'success'},
		'failure' => {app => 'Payment', rm => 'failure'},
		'thanks/:qid/:puuid/:digest' => {app => 'Payment', rm => 'thanks'},
		'upload_quote' => {app => 'Payment', rm => 'upload_quote'},
		'save_quote' => {app => 'Payment', rm => 'save_quote'},
		'show_quote/:qid/:uuid/:digest' => {app => 'Payment', rm => 'show_quote'},
		'form' => {app => 'Init', rm => 'init'},
	],
	debug => 1,
);

builder {
	
	mount '/images' 		=> Plack::App::File->new(root => '../public_html/images');
	mount '/css'			=> Plack::App::File->new(root => '../public_html/css');
	mount '/js'				=> Plack::App::File->new(root => '../public_html/js');
	mount '/maps'			=> Plack::App::File->new(root => '../public_html/maps');
	mount '/markers' 		=> Plack::App::File->new(root => '../public_html/markers');
	mount '/favicon.ico'	=> Plack::App::File->new(file => '../public_html/favicon.ico');
	mount '/'				=> $app;
}
