json.array!(@stores) do |store|
  json.extract! store, :id, :store_name
  json.url store_url(store, format: :json)
end
