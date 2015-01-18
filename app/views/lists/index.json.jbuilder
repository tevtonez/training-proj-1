json.array!(@lists) do |list|
  json.extract! list, :id, :list_id, :list_name, :user_id
  json.url list_url(list, format: :json)
end
