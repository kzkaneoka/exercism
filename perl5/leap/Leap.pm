# Declare package 'Leap'
package Leap;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<is_leap_year>;

sub is_leap_year {
    my ($year) = @_;
    if ( $year % 400 == 0 ) {
        return 1;
    }
    elsif ( $year % 100 == 0 ) {
        return 0;
    }
    else {
        return $year % 4 == 0;
    }
}

1;
