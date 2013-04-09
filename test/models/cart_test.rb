require 'test_helper'

class CartTest < ActiveSupport::TestCase


  test "should add two line items" do
    cart = Cart.create
    cart.add_book(books(:one).id).save!
    cart.add_book(books(:two).id).save!
    assert_equal cart.line_items.size, 2
  end

  test "should add one line item with quantity of 2" do
    cart = Cart.create
    cart.add_book(books(:one).id).save!
    cart.add_book(books(:one).id).save!
    assert_equal 1, cart.line_items.size
    assert_equal cart.line_items[0].quantity, 2
  end


end
