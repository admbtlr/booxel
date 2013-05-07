FactoryGirl.define do

  factory :customer do
    name 'John Test'
    email 'john@test.co,'
    password_digest 'MyString'
    device_type 'kindle'
    cc_number '1234567890123456'
    cc_exp_date 2013-04-19
    cc_cvc '123'
    save_cc_details false
  end

  factory :book do
    title 'This is the One'
    author 'Author One'
    teaser 'This is my teaser'
    description 'MyText'
    image_url 'MyString.jpg'
    price '9.99'
    publication_date 2012-01-01
    editor 'Editor'
    translator 'Translator'
    page_count 200
    page_count_edition 'paperback'
    blurbs 'Blurb blurb blurb'
    prominence 1
  end

  factory :order do
    book
    customer
  end




end