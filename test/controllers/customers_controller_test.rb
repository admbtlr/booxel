require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { cc_cvc: @customer.cc_cvc, cc_exp_date: @customer.cc_exp_date, cc_number: @customer.cc_number, device_type: @customer.device_type, email: @customer.email, name: @customer.name, password_digest: @customer.password_digest, save_cc_details: @customer.save_cc_details }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { cc_cvc: @customer.cc_cvc, cc_exp_date: @customer.cc_exp_date, cc_number: @customer.cc_number, device_type: @customer.device_type, email: @customer.email, name: @customer.name, password_digest: @customer.password_digest, save_cc_details: @customer.save_cc_details }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
