json.array!(@foods) do |food|
  json.extract! food, :id, :name, :protein, :fat, :carbs, :portion_size, :portion_units
  json.url food_url(food, format: :json)
end
