#
# $Id$
#

use strict;
use warnings;

use Test::More;
plan tests => 4;

use_ok('Text::Indent');

my $i = Text::Indent->new( Level => 5 );
is( $i->level, 5, "level initialized to 5");
$i->decrease;
is( $i->level, 4, "level decreased to 4");
$i->decrease(2);
is( $i->level, 2, "level decreased to 2");

#
# EOF
