class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :device_type
      t.string :cc_number
      t.date :cc_exp_date
      t.integer :cc_cvc
      t.boolean :save_cc_details

      t.timestamps
    end
  end
end
