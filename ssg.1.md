% SSG(1) Version 0.2 | Manual

# NAME

**ssg** — static site generator

# SYNOPSIS

**ssg [-bld]**

# DESCRIPTION

A tiny script for creating websites with `pandoc`.

## Options

**`-b`**
:	Builds site.

**`-l`**
:	Indexes the `BLOGDIR` and creates `$BLOGDIR/index.md`.

**`-d`**
:	Starts http server (`httpwatcher`) and watch daemon (`entr`). Builds site on file change in `SRCDIR` `STATICDIR`.

## CONFIGURATION

A valid configuration file `./ssg.conf` is required to run the program.

**Note**: do not add trailing `/` to paths.

Configuration variables:

`SRCDIR`

:	Path to input directory. Can contain files of valid `pandoc` input formats.

	<https://pandoc.org/MANUAL.html#general-options>

`DESTDIR`

:	Path to output directory.

`STATICDIR`

:	Path to static directory. This directory's contents will be copied into the `DESTDIR`.

`TEMPLATE`

:	Path to `pandoc --template` html file.
	
	<https://pandoc.org/MANUAL.html#templates>

`BLOGDIR` (optional)

:	Path to blog entries. Should be inside the `SRCDIR`

`BLOGTITLE` (optional)
:	Title of blog index. Can include Markdown heading symbol(s) `#`