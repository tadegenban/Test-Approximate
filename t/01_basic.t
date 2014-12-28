use strict;
use warnings;

use Test::More;
use Test::Approximate;

is_approx(1, 1, 'first', '1%');
is_approx(1, 1.00001, 'second', '1%');
is_approx(3.1415926, 3.1415, 'third', '1%');
is_approx(0.0001001, '1e-04', 'str vs num', '1%');
is_approx('str', 'str', 'str vs str', '1%');
done_testing;
