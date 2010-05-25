# Messages engine for Refinery CMS

__A basic messages system to add into the Ruby on Rails content management system Refinery CMS.__

## How to use

Go to your Refinery application's root directory at command line and type:

	script/plugin install git://github.com/parndt/refinerycms-messages.git

Now run the setup tasks:

	script/generate messages
	rake db:migrate

And you should have a new messages section on your website.