[![Build & release](https://github.com/dariotrinchero/beamer/actions/workflows/compile_release.yaml/badge.svg)](https://github.com/dariotrinchero/beamer/actions/workflows/compile_release.yaml)

# Beamer Template

This repo contains the template from which I create presentations in Beamer, including theme,
color palette, and build config.

## Compiled output & screenshots

The compiled template is available alongside as a GitHub **release**. Here are some screenshots
showing off the basic layout and some key features:

<p float="left">
<img src="https://github.com/dariotrinchero/beamer/releases/download/latest/presentation-1.jpg" width="70%">
<img src="https://github.com/dariotrinchero/beamer/releases/download/latest/presentation-3.jpg" width="70%">
<img src="https://github.com/dariotrinchero/beamer/releases/download/latest/presentation-5.jpg" width="70%">
</p>

## Getting started

### Dependencies

- TeX installation like TexLive
- `pdflatex`
- `latexmk`
- GNU Make

### Overview of setup

1. Download this repo.
1. Install the dependencies listed above.
1. Test compilation by running `make` in the repo root directory. Sometimes it needs to be
   run twice for the initial compilation; subsequent compilations are faster.
1. Customize the slides in `presentation.tex`.
1. Customize the references in `references.bib`.
1. Optionally customize the fonts, colors, logo, etc, in `beamerthemesu.sty`.

### Compilation

The build process is orchestrated by GNU Make and `latexmk`. The following Make targets are
implemented:

- `all`: default target; build presentation
- `bg`: background compilation; watch files & recompile on changes
- `clean`: delete compilation artifacts
- `install`: place `.tar.gz` compressed version of this repo in ~/Templates

## Disclaimer

Currently the template is set up with my personal details, and the colors and logo of
Stellenbosch University. This project is in no way endorsed by or affiliated wtih Stellenbosch
University, and I make no claim that any of the branding is correctly applied.
