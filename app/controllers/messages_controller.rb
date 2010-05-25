class MessagesController < ApplicationController

	before_filter :find_page

	def index
		if searching?
      @messages = Message.paginate_search params[:search],
                                    :page => params[:page],
                                    :order => "created_at DESC",
                                    :conditions => nil
    else
      @messages = Message.paginate  :page => params[:page],
                                    :order => "created_at DESC",
                                    :conditions => nil
    end
	end

  def show
		@messages = Message.find(:all, :order => "position ASC") # for body_content_right
    @message = Message.find(params[:id])
  end
  
protected

	def find_page
		@page = Page.find_by_link_url("/messages")
	end

end