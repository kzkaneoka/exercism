package ETL;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<transform>;

sub transform {
    my ($data) = @_;
    my %transformed_data;

    while ( my ( $key, $value ) = each(%$data) ) {
        $transformed_data{ lc $_ } = $key for (@$value);
    }

    return \%transformed_data;
}

1;
