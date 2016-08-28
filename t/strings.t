use strict;
use warnings;

use Test::More tests => 12;
use Test::NoWarnings;

use_ok('Geo::States');

my $ca = Geo::States->new('CA');
isa_ok($ca, 'Geo::States');

isa_ok($ca->find('nl'), 'Geo::States::nl');
isa_ok($ca->find('Newfoundland and Labrador'), 'Geo::States::newfoundland::and::labrador');

is($ca->find('nl')->capital, q<St. John's>);
is($ca->find('Newfoundland and Labrador')->capital, q<St. John's>);

my $us = Geo::States->new('US');
isa_ok($us, 'Geo::States');

isa_ok($us->find('dc'), 'Geo::States::dc');
isa_ok($us->find('District of Columbia'), 'Geo::States::district::of::columbia');

is($us->find('dc')->capital, '');
is($us->find('District of Columbia')->capital, '');
