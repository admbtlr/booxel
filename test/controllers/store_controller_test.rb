require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.container .entry', 2
    assert_select 'h3', 'One by Author One'
  end

  test "markup needed for store.js.coffee is in place" do
    get :index
    assert_select '.entry img', 2
    assert_select '.entry input[type=submit]', 2
  end
end
