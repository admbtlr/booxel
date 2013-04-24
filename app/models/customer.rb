class Customer < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :name, :device_type, presence: true
  validates :cc_number, :cc_exp_date, :cc_cvc, presence: true
  has_secure_password validations: false

end
