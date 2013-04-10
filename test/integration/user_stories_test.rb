require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest

fixtures :books

test "buying a product" do
  LineItem.delete_all
  Order.delete_all
  book = books(:one)

  get "/"
  assert_response :success
  assert_template "index"

  xml_http_request :post, '/line_items', book_id: book.id 
  assert_response :success

  cart = Cart.find(session[:cart_id])
  assert_equal 1, cart.line_items.size
  assert_equal book, cart.line_items[0].book

  get "/orders/new"
  assert_response :success
  assert_template "new"

  post_via_redirect "/orders",
                    order: { name:    'John Thomas',
                            address:  '123 The Street',
                            email:    'john@thomas.com',
                            pay_type: 'Cheque' }
  assert_response :success
  assert_template "index"
  cart = Cart.find(session[:cart_id])
  assert_equal 0, cart.line_items.size

  orders = Order.all
  assert_equal 1, orders.size
  order = orders[0]

  assert_equal 'John Thomas',       order.name
  assert_equal '123 The Street',    order.address
  assert_equal 'john@thomas.com',   order.email
  assert_equal 'Cheque',            order.pay_type

  assert_equal 1, order.line_items.size
  line_item = order.line_items[0]
  assert_equal book, line_item.book

  mail = ActionMailer::Base.deliveries.last
  assert_equal ['john@thomas.com'], mail.to
  assert_equal 'Your order from Bks', mail.subject
end

end
