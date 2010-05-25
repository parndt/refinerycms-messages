class Admin::MessagesController < Admin::BaseController

  crudify :message, :title_attribute => :title, :order => "created_at DESC"
  
end