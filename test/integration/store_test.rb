require 'test_helper'

class StoreTest < ActionDispatch::IntegrationTest
  setup do
    @product = FactoryGirl.create(:product)
  end

  test "Anyone can view product" do
    visit root_path
    within "##{@product.id}" do
      has_content? @product.name
      has_content? @product.price
      has_content? @product.articul
    end

    within "#content" do
      find("##{@product.id}").click
      assert_equal store_path(@product), current_path
    end
  end

  test "should back to #index" do
    visit store_path(@product)
    click_link 'Back'
    assert_equal root_path, current_path
  end
end
