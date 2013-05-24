use strict;
use warnings;
use Test::More tests => 4;
use Data::Dumper;

use_ok('Monitoring::Livestatus::Class::Lite');

# single tcp connection
my $class = Monitoring::Livestatus::Class::Lite->new( peer => 'localhost:1234', );
isa_ok($class, "Monitoring::Livestatus::Class::Lite", 'tcp connection');

# single unix connection
$class = Monitoring::Livestatus::Class::Lite->new( peer => '/tmp/unix.socket', );
isa_ok($class, "Monitoring::Livestatus::Class::Lite", 'unix connection');

# verbose
$class = Monitoring::Livestatus::Class::Lite->new( peer => 'localhost:1234', verbose => 0 );
isa_ok($class, "Monitoring::Livestatus::Class::Lite", 'verbose option');

