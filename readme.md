# Messages engine for Refinery CMS

__A basic audio/video/media messages system to add into the Ruby on Rails content management system Refinery CMS.__

## About

This is to add functionality to your website to allow people to publish audio files (or video files or any other media really) with a title and a description by hooking into the Files capability of [Refinery CMS](http://refinerycms.com).

## How do I use it?

### Requirements

[Refinery CMS](http://refinerycms.com) version 0.9.6 or later.

### Gem Installation using Bundler

Include the latest version into your Refinery CMS application's Gemfile from github:

    gem "refinerycms-messages", '~> 0.9.7', :require => "messages", :git => 'git://github.com/parndt/refinerycms-messages.git', :tag => '0.9.7'

Then type the following at command line inside your Refinery CMS application's root directory:

    bundle install
    script/generate messages
    rake db:migrate

### Rails Engine Installation

If you do not want to install the engine via bundler then you can install it as an engine inside your application's vendor directory.
Type the following at command line inside your Refinery CMS application's root directory:

    script/plugin install git://github.com/parndt/refinerycms-messages.git
    script/generate messages
    rake db:migrate

And you should have a new messages section on your website.