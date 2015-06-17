require "test_helper"

class Productstest < ActionDispatch::IntegrationTest
  test "Anyone can view product" do
    product = FactoryGirl.create(:product)
    visit root_path
    click_link 'Show', href: "/products/#{product.id}"
    assert_equal product_path(product), current_path
  end
end