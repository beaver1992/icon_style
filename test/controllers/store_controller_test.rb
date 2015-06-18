require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  setup do
    @product = FactoryGirl.create(:product)
    10.times { FactoryGirl.create(:product) }
  end

  test "should get index" do
    get :index
    assert_response :success

    assert_not_nil assigns(:products)
  end

  test "should get show" do
    get :show, id: @product
    assert_response :success
    assert_not_nil assigns(:product)
  end

end
