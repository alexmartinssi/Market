json.array!(@items) do |item|
  json.extract! item, :id, :product_id, :quantity, :price
  json.url item_url(item, format: :json)
end
