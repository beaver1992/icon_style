require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = FactoryGirl.build(:product)
  end

  def assert_false(model)
    assert_not model.valid?
  end

  test "product should be valid" do
    assert @product.valid?
  end

  test "product should not be valid beacouse of empty name" do
    @product.name = ""
    assert_false(@product)
  end

  test "product should not be valid beacouse of price equal 0" do
    @product.price = 0
    assert_false(@product)
  end

  test "product should not be valid beacouse of empty articul" do
    @product.articul = ""
    assert_false(@product)
  end

  test "product should not be valid beacouse of name very long" do
    @product.name = "a"*31
    assert_false(@product)
  end

  test "product should not be valid beacouse of articul very short" do
    @product.articul = "a"
    assert_false(@product)
  end

  test "product should not be valid beacouse of articul very long" do
    @product.articul = "a"*11
    assert_false(@product)
  end
end
