# Alien::xz [![Build Status](https://secure.travis-ci.org/plicease/Alien-xz.png)](http://travis-ci.org/plicease/Alien-xz)

Find or build xz

# SYNOPSIS

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

# DESCRIPTION

This package can be used by other CPAN modules that require xz,
the compression utility.

# HELPERS

## xz

    %{xz}

Returns the name of the xz command.  Usually just `xz`.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
