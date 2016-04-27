json.array!(@condition_types) do |condition_type|
  json.extract! condition_type, :id, :name
  json.url condition_type_url(condition_type, format: :json)
end
