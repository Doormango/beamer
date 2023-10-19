[![Build & release](https://github.com/dariotrinchero/beamer/actions/workflows/compile_release.yaml/badge.svg)](https://github.com/dariotrinchero/beamer/actions/workflows/compile_release.yaml)

# Beamer Template

This repo contains the template from which I create presentations in Beamer, including theme,
color palette, and build config.

## Compiled output

The compiled template is available alongside as a GitHub **release**. Here is a preview of the title slide:

![compiled beamer preview](https://github.com/dariotrinchero/beamer/releases/download/latest/presentation-1.jpg)

## Make targets

Compilation requires `pdflatex`, and the build process is orchestrated by GNU Make
and `latexmk`. The following GNU Make targets are supported:

- `all`: default target; build presentation
- `bg`: background compilation; watch files & recompile on changes
- `clean`: delete compilation artifacts
- `install`: place `.tar.gz` compressed version of this repo in ~/Templates

## Disclaimer

Currently the template is set up with my personal details, and the colors and logo of
Stellenbosch University. This project is in no way endorsed by or affiliated wtih Stellenbosch
University, and I make no claim that any of the branding is correctly applied.
