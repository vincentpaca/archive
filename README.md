archive
=======
[![Build Status](https://secure.travis-ci.org/vincentpaca/archive.png?branch=master)](https://travis-ci.org/vincentpaca/archive) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/vincentpaca/archive)

Upload, search and browse through your files easily with this application.

Development Notes
-----------------

archive uses [Docsplit](http://documentcloud.github.com/docsplit/) to break down and process PDF files.
There are a few dependencies that are needed before starting development.

### Docsplit Prerequisites
All packages are available via apt or brew.

1. install graphicsmagick

2. install poppler (poppler-utils poppler-data for *nix)

3. install ghostscript

4. install tesseract tesseract-ocr

5. install pdftk (*nix only)

6. install openoffice.org openoffice.org-java-common
