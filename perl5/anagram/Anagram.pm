#!/usr/bin/env perl
package Anagram;
use strict;
use warnings;

sub match {
    my ( $word, @words ) = @_;
    my @anagrams;
    foreach my $candidate (@words) {
        if ( is_anagram( $word, $candidate ) ) {
            push( @anagrams, $candidate );
        }
    }
    return \@anagrams;
}

sub normalize {
    my $word = shift;
    return join( "", sort split //, lc $word );
}

sub is_anagram() {
    my ( $word, $candidate ) = @_;
    if ( $word eq $candidate ) {
        return 0;
    }
    else {
        return normalize($word) eq normalize($candidate);
    }
}

1;
