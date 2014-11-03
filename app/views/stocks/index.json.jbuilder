json.array!(@stocks) do |stock|
  json.extract! stock, :id, :item_id, :supplier_id, :quantity, :sale_price
  json.url stock_url(stock, format: :json)
end
