# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Feed.all.each do |feed|
  parser = FeedParser.new(:url => feed.url)
  rssfeed = parser.parse
  rssfeed.items.each do |data|
    Article.create title: data.title, body: data.description, picture: data.link
  end
end
