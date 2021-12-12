% SSG(1) Version 0.2 | Manual

# NAME

**ssg** — static site generator

# SYNOPSIS

**ssg [-bld]**

# DESCRIPTION

A tiny script for creating websites with `pandoc`.

## Options

**-b**	Builds site.

**-l**	Indexes the `BLOGDIR` and creates `$BLOGDIR/index.md`.

**-d**	Starts http server (`httpwatcher`) and watch daemon (`entr`).

		Builds site on file change in `SRCDIR` and `STATICDIR`.

## CONFIGURATION

The build variables can be set in the configuration file: `./ssg.conf`.

**Note**: do not add trailing `/` to paths.

Configuration variables:

`SRCDIR`

:	default: `./src`
	
	Path to input directory. Can contain files of valid `pandoc` input formats.

	<https://pandoc.org/MANUAL.html#general-options>

`DESTDIR`

:	default: `./dist`

	Path to output directory.

`STATICDIR`

:	default: `./static`

	Path to static directory. This directory's contents will be copied into the `DESTDIR`.

`TEMPLATE`

:	default: `./template.html`

	Path to `pandoc --template` html file.
	
	<https://pandoc.org/MANUAL.html#templates>

`BLOGDIR`

:	default: `./src/blog`

	Path to blog entries.

`BLOGTITLE`

:	default: `# Blog`

	Title of blog index. Markdown format.