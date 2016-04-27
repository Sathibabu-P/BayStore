json.array!(@listing_types) do |listing_type|
  json.extract! listing_type, :id, :name
  json.url listing_type_url(listing_type, format: :json)
end
