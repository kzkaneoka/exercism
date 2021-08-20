package Phrase;
use strict;
use warnings;

sub word_count {
    my $phrase = @_;
    my %counts;
    for ( my $word split //, $phrase ) {
        $counts{ lc $word }++;
    }
    return $counts;
}

1;