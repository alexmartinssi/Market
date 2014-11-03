json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :item_id, :total, :supplier_id
  json.url purchase_url(purchase, format: :json)
end
