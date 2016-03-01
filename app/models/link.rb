require 'uri'

class Link < ActiveRecord::Base
  enum read: %w(unread read)

  validates_presence_of :title

  validates :url, :format => URI::regexp(%w(http https))

  belongs_to :user
end
