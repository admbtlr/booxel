class Customer < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :name, :device_type, presence: true
  validates :cc_number, :cc_exp_date, :cc_cvc, presence: true
  has_secure_password validations: false

  has_many :orders

  def has_iOS
    return device_type.include?('iOS')
  end

  def has_kindle
    return device_type.include?('kindle')
  end

  def registered?
    password?
  end

end
