package Grains;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(grains_on_square total_grains);

sub grains_on_square {
  my ($square) = @_;
  if ($square < 1 || $square > 64) {
    die "square must be between 1 and 64";
  }
  return 2 ** ($square - 1);
}

sub total_grains {
  my $total = 0;
  for (1 .. 64) {
    $total += square($_);
  }
  return $total;
}

1;
