class Article < ActiveRecord::Base
  def self.recent
    nu = FeedParser.new(:url => "http://nu.nl/rss")
    feed = nu.parse
    feed.items
  end

  def self.recent_1
    telegraaf = FeedParser.new(:url => "http://www.telegraaf.nl/rss")
    feed = telegraaf.parse
    feed.items
  end
end
