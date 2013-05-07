require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @book = FactoryGirl.create(:book, :title => 'This is the Two')
    @order = FactoryGirl.create(:order)
    @customer = @order.customer
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should create order" do
    assert_difference('Order.count') do
      login_as_customer(@customer)
      get :new, { book_id: @book.id }
    end

    assert_response :success
  end

  test "should show order" do
    login_as_customer(@customer)
    get :show, id: @order.id
    assert_response :success
  end

  test "should get edit" do
    login_as_customer(@customer)
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    login_as_customer(@customer)
    patch :update, id: @order, order: { address: @order.address, email: @order.email, name: @order.name, pay_type: @order.pay_type }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    login_as_customer(@customer)
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
