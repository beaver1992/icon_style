class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :articul, presence: true, length: { in: 6..10 }
end
