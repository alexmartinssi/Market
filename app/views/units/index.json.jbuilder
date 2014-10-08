json.array!(@units) do |unit|
  json.extract! unit, :id, :description, :acronym
  json.url unit_url(unit, format: :json)
end
