# Declare package 'Bob'
package Bob;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(hey);

sub hey {
  my ($msg) = @_;
  if ($msg =~ /^[\n\r\t\s]*$/) {
    return "Fine. Be that way!";
  }
  elsif ($msg =~ /^[A-Z\s]+\?$/) {
    return "Calm down, I know what I'm doing!";
  }
  elsif ($msg =~ /^[A-Za-z0-9,\s\:\)\.\!]+\?\s*$/) {
    return "Sure.";
  }
  elsif ($msg =~ /^([A-Z]+[^a-z]+\!)|([^a-z]+[0-9]*[A-Z\%\@\#\$\(\)\*\^\!,]+)$/) {
    return "Whoa, chill out!";
  }
  elsif ($msg =~ /^[\n\r\t\s]*$/) {
    return "Fine. Be that way!";
  } else {
    return "Whatever.";
  }
}

1;
