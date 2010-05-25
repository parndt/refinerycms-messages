class MessagesGenerator < Rails::Generator::NamedBase

  def initialize(*runtime_args)
    # set first argument to the table's name so that the user doesn't have to pass it in.
    runtime_args[0] = ["messages_items"]
    super(*runtime_args)
  end

  def banner
    "Usage: script/generate messages"
  end

  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate',
        :migration_file_name => "create_structure_for_messages",
        :assigns => {
          :migration_name => "CreateStructureForMessages",
          :table_name => "messages",
          :attributes => [
            Rails::Generator::GeneratedAttribute.new("title", "string"),
            Rails::Generator::GeneratedAttribute.new("body", "text"),
            Rails::Generator::GeneratedAttribute.new("resource_id", "integer"),
            Rails::Generator::GeneratedAttribute.new("draft", "boolean"),
            Rails::Generator::GeneratedAttribute.new("position", "integer"),
            Rails::Generator::GeneratedAttribute.new("message_date", "datetime")
          ]
        }
    end
  end

end if defined?(Rails::Generator::NamedBase)