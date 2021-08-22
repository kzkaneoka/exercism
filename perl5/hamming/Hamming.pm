package Hamming;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(hamming_distance);

sub hamming_distance {
    my ( $strand1, $strand2 ) = @_;

    if ( length $strand1 != length $strand2 ) {
        die "left and right strands must be of equal length";
    }

    my $distance    = 0;
    my @strand_arr1 = split( "", uc $strand1 );
    my @strand_arr2 = split( "", uc $strand2 );
    my $length      = @strand_arr1;

    for ( my $i = 0 ; $i < $length ; ++$i ) {
        $distance += $strand_arr1[$i] ne $strand_arr2[$i];
    }

    return $distance;
}

1;
