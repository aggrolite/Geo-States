use strict;
use warnings;

use Test::More tests => 8;
use Test::NoWarnings;

use_ok('Geo::States');

my $us = Geo::States->new('US');
isa_ok($us, 'Geo::States');

is($us->find('New York')->text, 'NY', 'Lookup for New York returns NY');
is($us->find('New York')->capital, 'Albany', q<New York's capital is Albany>);

my $ca = Geo::States->new('CA');
isa_ok($ca, 'Geo::States');

is($ca->find('Nova Scotia')->text, 'NS', 'Lookup for Nova Scotia returns NS');
is($ca->find('Nova Scotia')->capital, 'Halifax', q<Nova Scotia's capital is Halifax>);
