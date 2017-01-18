package My::ModuleBuild;

use strict;
use warnings;
use base qw( Alien::Base::ModuleBuild );
use IPC::Cmd qw( can_run );

sub alien_check_installed_version
{
  my $xz = can_run 'xz';
  return unless $xz;
  shift->SUPER::alien_check_installed_version;
}

1;
