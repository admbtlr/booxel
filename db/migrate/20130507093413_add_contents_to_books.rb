class AddContentsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :contents, :text
  end
end
