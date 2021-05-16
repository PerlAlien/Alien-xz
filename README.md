# Alien::xz ![linux](https://github.com/plicease/Alien-xz/workflows/linux/badge.svg)

Find or build xz

# SYNOPSIS

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Alien::Base::Wrapper ();

WriteMakefile(
  Alien::Base::Wrapper->new('Alien::xz')->mm_args2(
    # MakeMaker args
    NAME => 'My::XS',
    ...
  ),
);
```

In your Build.PL:

```perl
use Module::Build;
use Alien::Base::Wrapper qw( Alien::xz !export );

my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::xz' => '0',
    ...
  },
  Alien::Base::Wrapper->mb_args,
  ...
);

$build->create_build_script;
```

In your script or module:

```perl
use Alien::xz;
use Env qw( @PATH );

unshift @PATH, Alien::xz->bin_dir;
```

# DESCRIPTION

This package can be used by other CPAN modules that require xz,
the compression utility, or liblzma, which comes with it.

# HELPERS

## xz

```
%{xz}
```

Returns the name of the xz command.  Usually just `xz`.

# SEE ALSO

[Alien](https://metacpan.org/pod/Alien), [Alien::Base](https://metacpan.org/pod/Alien::Base), [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# AUTHOR

Author: Graham Ollis <plicease@cpan.org>

Contributors:

Dylan William Hardison (dylanwh, DHARDISON)

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
