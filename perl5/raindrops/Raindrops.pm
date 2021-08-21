package Raindrops;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(raindrop);

sub raindrop {
    my ($number) = @_;
    my $string = "";

    if ( $number % 3 == 0 ) {
        $string .= "Pling";
    }
    if ( $number % 5 == 0 ) {
        $string .= "Plang";
    }
    if ( $number % 7 == 0 ) {
        $string .= "Plong";
    }

    return $string || $number;
}

1;
