class AddSentToKindleAtToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :sent_to_kindle_at, :timestamp
  end
end
