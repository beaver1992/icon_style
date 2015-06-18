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

  test "product should not be valid because of empty name" do
    @product.name = ""
    assert_false(@product)
  end

  test "product should not be valid because of price equal 0" do
    @product.price = 0
    assert_false(@product)
  end

  test "product should not be valid because of empty articul" do
    @product.articul = ""
    assert_false(@product)
  end

  test "product should not be valid because of articul very short" do
    @product.articul = "a"
    assert_false(@product)
  end

  test "product should not be valid because of articul very long" do
    @product.articul = "a"*11
    assert_false(@product)
  end
end
