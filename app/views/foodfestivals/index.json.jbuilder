json.array!(@foodfestivals) do |foodfestival|
  json.extract! foodfestival, :id, :what, :where, :when_time, :when_start, :when_finish, :why
  json.url foodfestival_url(foodfestival, format: :json)
end
