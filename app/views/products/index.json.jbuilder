json.array!(@products) do |product|
  json.extract! product, :id, :title, :place
  json.url product_url(product, format: :json)
end
