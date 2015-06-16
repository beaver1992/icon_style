json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :articul
  json.url product_url(product, format: :json)
end
