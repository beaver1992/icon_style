require 'test_helper'

class StoreTest < ActionDispatch::IntegrationTest
  setup do
    @product = FactoryGirl.create(:product)
  end

  test "Anyone can view product" do
    visit root_path
    within "#product_#{@product.id}" do
      click_link 'Show', href: "/products/#{@product.id}"
      assert_equal product_path(@product), current_path
    end
  end

  test "should back to #index" do
    visit store_path(@product)
    click_link 'Back'
    assert_equal root_path, current_path
  end
end
