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

  my $distance = 0;
  my @arr_strand1 = split( //, $strand1 );
  my @arr_strand2 = split( //, $strand2 );

  for ( 0 .. length $strand1 - 1) {
    $distance += @arr_strand1[$_] ne @arr_strand2[$_];
  }

  return $distance;
}

1;
