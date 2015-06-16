class Product < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 30 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :articul, presence: true, length: { in: 6..10 }
end
