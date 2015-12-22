json.array!(@eatens) do |eaten|
  json.extract! eaten, :id, :food_id, :portion_factor, :date
  json.url eaten_url(eaten, format: :json)
end
