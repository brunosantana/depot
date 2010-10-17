require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
	assert_select '#columns #side a', :minimum => 4
    assert_select '#main .entry', 2
    assert_select 'h3', 'Title One'
    assert_select 'h3', 'Title Two'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
