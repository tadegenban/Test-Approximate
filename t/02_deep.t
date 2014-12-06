use strict;
use warnings;
use Test::More;
use Test::Deep;
use Test::Approximate;

my $got = [ 1.00001, 2, 3, 4 ];
my $expect = [ 1, 2, 3, 4 ];
cmp_deeply($got, approx($expect, '1%'), 'array');

$got = { a => 1, b => 1e-3, c => [ 1.1, 2.5, 5, 1e-9 ] };
$expect = { a => 1.0001, b => 1e-03, c => [ 1.1, 2.5, 5, 1.00001e-9 ] };
cmp_deeply( $got, approx($expect, '0.01%'), 'hash mix array');

done_testing;
