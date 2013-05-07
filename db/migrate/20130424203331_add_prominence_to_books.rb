class AddProminenceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :prominence, :integer
  end
end
