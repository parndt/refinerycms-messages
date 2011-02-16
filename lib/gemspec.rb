#!/usr/bin/env ruby
require File.expand_path('../messages.rb', __FILE__)
version = ::Refinery::Messages::Version.to_s
raise "Could not get version so gemspec can not be built" if version.nil?
files = %w( *.md ).map{|file| Dir[file]}
%w(app bin config db lib public rails test vendor).each do |dir|
  files += Dir.glob("#{dir}/**/*") if File.directory?(dir)
end

gemspec = <<EOF
Gem::Specification.new do |s|
  s.name              = %q{refinerycms-messages}
  s.version           = %q{#{version}}
  s.description       = %q{A really straightforward open source Ruby on Rails messages engine designed for integration with RefineryCMS.}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %q{Ruby on Rails messages engine for RefineryCMS.}
  s.authors           = %w(Philip\\ Arndt)
  s.require_paths     = %w(lib)

  s.files             = [
    '#{files.join("',\n    '")}'
  ]
  #{"s.test_files        = [
    '#{Dir.glob("test/**/*.rb").join("',\n    '")}'
  ]" if File.directory?("test")}
end
EOF

File.open(File.expand_path("../../refinerycms-messages.gemspec", __FILE__), 'w').puts(gemspec)