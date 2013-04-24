json.array!(@customers) do |customer|
  json.extract! customer, :name, :email, :password_digest, :device_type, :cc_number, :cc_exp_date, :cc_cvc, :save_cc_details
  json.url customer_url(customer, format: :json)
end