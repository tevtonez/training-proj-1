json.array!(@products) do |product|
  json.extract! product, :id, :article, :place
  json.url product_url(product, format: :json)
end
