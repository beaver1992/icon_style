FactoryGirl.define do
  factory :product do
    sequence(:name) { |i| "bra#{i}" }
    sequence(:articul) { |i| "articul#{i}" }
    price 123
  end
end