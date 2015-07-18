class Article < ActiveRecord::Base
  def self.recent
    news24 = FeedParser.new(:url => "http://feeds.news24.com/articles/channel/topstories/rss")
    feed = news24.parse
    feed.items
  end

  def self.recent_1
    ntnews = FeedParser.new(:url => "http://feeds.news.com.au/public/rss/2.0/NT_OnlyInNT_3358.xml")
    feed = ntnews.parse
    feed.items
  end

  def self.recent_2
    sky = FeedParser.new(:url => "http://feeds.skynews.com/sky-news/rss/strange-news/rss.xml")
    feed = sky.parse
    feed.items
  end

  def self.recent_3
    ap = FeedParser.new(:url => "http://hosted.ap.org/lineups/STRANGEHEADS-rss_2.0.xml?SITE=SCAND&SECTION=HOME")
    feed = ap.parse
    feed.items
  end

  def self.big_feed
    self.recent + self.recent_1 + self.recent_2 + self.recent_3
  end
end
