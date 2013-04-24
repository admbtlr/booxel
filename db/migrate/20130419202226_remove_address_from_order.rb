class RemoveAddressFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :address, :text
  end
end
