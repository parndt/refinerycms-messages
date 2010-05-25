class <%= migration_name %> < ActiveRecord::Migration

  def self.up
    create_table :<%= table_name %> do |t|
<% attributes.each do |attribute| -%>
      t.<%= attribute.type %> :<%= attribute.name %>
<% end -%>
      t.timestamps
    end

    add_index :<%= table_name %>, :id

    User.find(:all).each do |user|
      user.plugins.create(:title => "Messages", :position => (user.plugins.maximum(:position) || -1) + 1)
    end

    page = Page.create(:title => "Messages",
                :link_url => "/messages",
                :menu_match => "^/messages.*$",
                :deletable => false,
                :position => Page.count)

    RefinerySetting.find_or_set(:default_page_parts, ["Body", "Side Body"]).each do |default_page_part|
      page.parts.create(:title => default_page_part, :body => nil)
    end

  end

  def self.down
    UserPlugin.destroy_all({:title => "Messages"})

    Page.find_all_by_link_url("/messages").each do |page|
      page.link_url, page.menu_match = nil
      page.deletable = true
      page.destroy
    end
    Page.destroy_all({:link_url => "/messages"})

    drop_table :<%= table_name %>
  end

end