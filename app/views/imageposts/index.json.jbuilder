json.array!(@imageposts) do |imagepost|
  json.extract! imagepost, :id, :name, :comment
  json.url imagepost_url(imagepost, format: :json)
end
