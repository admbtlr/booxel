require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.container .entry', 2
    assert_select 'h3', 'One by Author One'
  end

end
