Refinery::Plugin.register do |plugin|
	plugin.directory = directory
	plugin.title = "Messages"
	plugin.description = "Manage Messages"
	plugin.version = 1.0
	plugin.menu_match = /^admin\/messages$/
	plugin.activity = {:class => Message, :url_prefix => "edit_", :title => 'title'}
end