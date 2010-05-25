# Messages engine for Refinery CMS

__A basic audio/video/media messages system to add into the Ruby on Rails content management system Refinery CMS.__

## What this is for

This is to add functionality to your website to allow people to publish audio files (or video files or any other media really) with a title and a description by hooking into the Files capability of Refinery CMS.

## How to use

Go to your Refinery application's root directory at command line and type:

	script/plugin install git://github.com/parndt/refinerycms-messages.git

Now run the setup tasks:

	script/generate messages
	rake db:migrate

And you should have a new messages section on your website.