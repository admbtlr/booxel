class RemoveNameAndEmailAndPayTypeFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :name, :text
    remove_column :orders, :email, :text
    remove_column :orders, :pay_type, :text
  end
end
