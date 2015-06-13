json.array!(@concerts) do |concert|
  json.extract! concert, :id, :artist, :date, :start_time, :finish_time, :cost
  json.url concert_url(concert, format: :json)
end
