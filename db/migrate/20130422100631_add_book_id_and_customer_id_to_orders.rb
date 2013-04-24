class AddBookIdAndCustomerIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :book_id, :integer
    add_column :orders, :customer_id, :integer
  end
end
