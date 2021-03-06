#! /usr/bin/perl

use strict;
use warnings;

use lib qw{../traveljadoo/lib};

use Odyssey::Itineraries;
use Odyssey::Constants;

my $app = Odyssey::Itineraries->new({
	cfg_file => $Odyssey::Constants::confdir . 'Odyssey.conf',
});
$app->run();

# Now on Git!
