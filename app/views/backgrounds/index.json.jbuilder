json.array!(@backgrounds) do |background|
  json.extract! background, 
  json.url background_url(background, format: :json)
end
