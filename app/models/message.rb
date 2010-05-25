class Message < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :body]
  has_friendly_id :title, :use_slug => true, :strip_diacritics => true

  validates_presence_of :title
  validates_uniqueness_of :title

  belongs_to :resource

  alias_attribute :content, :body

  before_save :normalise_text_fields

protected
  def normalise_text_fields
    unless self.body.blank? or self.body =~ /^\</
      self.body = "<p>#{self.body.gsub("\r\n\r\n", "</p><p>").gsub("\r\n", "<br/>")}</p>"
    end
  end

end
