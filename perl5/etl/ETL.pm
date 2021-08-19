package ETL;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<transform>;

sub transform {
  my $data = @_;
  my @transformed_data = {};

  while ( my $key, $value = each $data ) {
    foreach ( $value ) {
      $transformed_data{lc $_} = $key;
    }
  }

  return $transformed_data;
}

1;
