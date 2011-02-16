Gem::Specification.new do |s|
  s.name              = %q{refinerycms-messages}
  s.version           = %q{0.9.7}
  s.description       = %q{A really straightforward open source Ruby on Rails messages engine designed for integration with RefineryCMS.}
  s.date              = %q{2010-07-05}
  s.summary           = %q{Ruby on Rails messages engine for RefineryCMS.}
  s.authors           = %w(Philip\ Arndt)
  s.require_paths     = %w(lib)

  s.files             = [
    'readme.md',
    'app/controllers',
    'app/controllers/admin',
    'app/controllers/admin/messages_controller.rb',
    'app/controllers/messages_controller.rb',
    'app/models',
    'app/models/message.rb',
    'app/views',
    'app/views/admin',
    'app/views/admin/messages',
    'app/views/admin/messages/_form.html.erb',
    'app/views/admin/messages/_message.html.erb',
    'app/views/admin/messages/_sortable_list.html.erb',
    'app/views/admin/messages/edit.html.erb',
    'app/views/admin/messages/index.html.erb',
    'app/views/admin/messages/new.html.erb',
    'app/views/messages',
    'app/views/messages/index.html.erb',
    'app/views/messages/show.html.erb',
    'config/routes.rb',
    'lib/gemspec.rb',
    'lib/messages.rb'
  ]
  
end
