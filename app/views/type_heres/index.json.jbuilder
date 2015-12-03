json.array!(@type_heres) do |type_here|
  json.extract! type_here, :id, :title, :words
  json.url type_here_url(type_here, format: :json)
end
