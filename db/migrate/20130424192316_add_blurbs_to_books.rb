class AddBlurbsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :blurbs, :text
  end
end
