class AddKindleEmailToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :kindle_email, :text
  end
end
