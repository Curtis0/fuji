json.array!(@libraries) do |library|
  json.extract! library, :id, :title, :author, :price, :publisher, :release_date, :ISBN
  json.url library_url(library, format: :json)
end
