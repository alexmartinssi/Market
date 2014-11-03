json.array!(@sales) do |sale|
  json.extract! sale, :id, :item_id, :total
  json.url sale_url(sale, format: :json)
end
