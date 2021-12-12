% SSG(1) Version 0.1 | Manual

# NAME

**ssg** — static site generator

# SYNOPSIS

**ssg [-bd]**

# DESCRIPTION

A tiny script for creating websites with `pandoc`.

## Options

**-b**	Builds site.

**-d**	Builds site; starts http server (`httpwatcher`) and watch daemon (`entr`).

## CONFIGURATION

The build paths can be set in the configuration file: `$PWD/.ssg`.

Configuration variables:

`SRCDIR`

:	default: `$PWD/src`
	
	Path to input directory. Can contain files of valid `pandoc` input formats.

	<https://pandoc.org/MANUAL.html#general-options>

`DESTDIR`

:	default: `$PWD/dist`

	Path to output directory.

`STATICDIR`

:	default: `$PWD/static`

	Path to static directory. This directory's contents will be copied into the `DESTDIR`.

`TEMPLATE`

:	default: `$PWD/template.html`

	Path to `pandoc --template` html file.
	
	<https://pandoc.org/MANUAL.html#templates>