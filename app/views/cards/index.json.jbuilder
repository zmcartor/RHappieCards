json.array!(@cards) do |card|
  json.extract! card, 
  json.url card_url(card, format: :json)
end
