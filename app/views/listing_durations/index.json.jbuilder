json.array!(@listing_durations) do |listing_duration|
  json.extract! listing_duration, :id, :name
  json.url listing_duration_url(listing_duration, format: :json)
end
