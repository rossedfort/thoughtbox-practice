require 'uri'

class Link < ActiveRecord::Base
  validates_presence_of :title

  validates :url, :format => URI::regexp(%w(http https))
end
