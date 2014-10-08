json.array!(@products) do |product|
  json.extract! product, :id, :bar_code, :description, :price, :quantity, :unit_id, :category_id
  json.url product_url(product, format: :json)
end
