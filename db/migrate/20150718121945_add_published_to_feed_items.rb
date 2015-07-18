class AddPublishedToFeedItems < ActiveRecord::Migration
  def change
    add_column :feed_items, :published, :datetime
  end
end
