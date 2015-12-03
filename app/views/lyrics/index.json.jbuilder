json.array!(@lyrics) do |lyric|
  json.extract! lyric, :id, :name, :content
  json.url lyric_url(lyric, format: :json)
end
