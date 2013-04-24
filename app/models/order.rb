class Order < ActiveRecord::Base
  belongs_to :book
  belongs_to :customer

end
