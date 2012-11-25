archive
=======
[![Build Status](https://secure.travis-ci.org/vincentpaca/archive.png?branch=master)](https://travis-ci.org/vincentpaca/archive) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/vincentpaca/archive)

Upload, search and browse through your files easily with this application.

Development Notes
-----------------

### Background jobs with Sidekiq and Redis
archive uses [Sidekiq](http://mperham.github.com/sidekiq) for background processes and in effect 
needs to have [redis](http://redis.io/download) on your machine installed.

#### Installing Redis
Installing redis is easy. For development, do:

    wget http://redis.googlecode.com/files/redis-2.6.5.tar.gz
    tar xzf redis-2.6.5.tar.gz
    cd redis-2.6.5.tar.gz
    make

Then to run redis, do:

    src/redis-server

That's it! Redis is now running at port 6379.

#### Sidekiq
Sidekiq comes with a very nifty web interface to track your processes a-la-resque.
Just add slim and sinatra to your Gemfile:

    gem 'slim'
    gem 'sinatra', :require => nil

And mount Sidekiq ui to your routes:

    require 'sidekiq/web'
    mount Sidekiq::Web => '/sidekiq'

For more information, visit [Sidekiq's Monitoring Documentation](https://github.com/mperham/sidekiq/wiki/Monitoring) for securing the UI in production.

### Docsplit
archive uses [Docsplit](http://documentcloud.github.com/docsplit/) to break down and process PDF files.
There are a few dependencies that are needed before starting development.

#### Docsplit Prerequisites
All packages are available via apt or brew.

1. install graphicsmagick

2. install poppler (poppler-utils poppler-data for *nix)

3. install ghostscript

4. install tesseract tesseract-ocr

5. install pdftk (*nix only)

6. install openoffice.org openoffice.org-java-common
