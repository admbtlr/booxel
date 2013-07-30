class RemoveSentToKindleAtAndDateFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :sent_to_kindle_at, :string
    remove_column :orders, :date, :string
  end
end
