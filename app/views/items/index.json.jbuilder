json.array!(@items) do |item|
  json.extract! item, :id, :item_id, :product, :quantity, :place, :list_id
  json.url item_url(item, format: :json)
end
