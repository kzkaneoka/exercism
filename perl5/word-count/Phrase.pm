package Phrase;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(word_count);

sub word_count {
    my ($phrase) = @_;
    my %counts;
    $counts{$_}++ for ( split( /\W+/, lc $phrase ) );
    return \%counts;
}

1;
