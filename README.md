**ssg** — static site generator

SYNOPSIS
========

**ssg [-bd]**

DESCRIPTION
===========

A tiny (~50 lines) script for creating websites with `pandoc`.

The program [paths](#paths) can be set by the following sequence:

 1. Using the per-project configuration file, *./.ssgrc*
 2. Using the per-user configuration file, *~/.ssg*

Options
-------

-b, --build

:	Builds site

-d, --dev

:	Builds site, starts http server (`httpwatcher`) and watch daemon (`entr`)

\[default\]

:	Prints message.

PATHS
=====

`srcdir`

:	(default) `$PWD/src`
	
	Input directory. Can contain files of valid `pandoc` input formats.

	<https://pandoc.org/MANUAL.html#general-options>

`destdir`

:	(default) `$PWD/dist`

	Output directory.

`staticdir`

:	(default) `$PWD/static`

	Static directory.

`template`

:	(default) `$PWD/template.html`

	`pandoc --template` custom template file.
	
	(hint: use `$body$` to display content)

	<https://pandoc.org/MANUAL.html#templates>

DEPENDENCIES
===========

* `pandoc`— <https://pandoc.org/MANUAL.html>
* `entr` — <https://eradman.com/entrproject/>
* `httpwatcher` — <https://pypi.org/project/httpwatcher/>
