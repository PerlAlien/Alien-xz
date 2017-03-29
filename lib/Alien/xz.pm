package Alien::xz;

use strict;
use warnings;
use base qw( Alien::Base );

# ABSTRACT: Find or build xz
# VERSION
# ALIEN SYNOPSIS

=head1 DESCRIPTION

This package can be used by other CPAN modules that require xz,
the compression utility.

=head1 HELPERS

=head2 xz

 %{xz}

Returns the name of the xz command.  Usually just C<xz>.

=cut

sub alien_helper
{
  return {
    xz => sub { 'xz' },
  };
}

# ALIEN SEE ALSO

1;
