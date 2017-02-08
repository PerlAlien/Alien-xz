package Alien::xz;

use strict;
use warnings;
use base qw( Alien::Base2 );

# ABSTRACT: Find or build xz
# VERSION

=head1 SYNOPSIS

From a Perl script

 use Alien::xz;
 use Env qw( @PATH );
 unshift @PATH, Alien::xz->bin_dir;  # xz is now in your path

From Alien::Base Build.PL

 use Alien:Base::ModuleBuild;
 my $builder = Module::Build->new(
   ...
   alien_bin_requires => {
     'Alien::xz' => '0.02',
   }
   ...
 );
 $builder->create_build_script;

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

1;
