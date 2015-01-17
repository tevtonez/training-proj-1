json.array!(@lists) do |list|
  json.extract! list, :id, :list_id, :product, :quantity, :place
  json.url list_url(list, format: :json)
end
