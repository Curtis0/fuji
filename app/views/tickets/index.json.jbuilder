json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :price, :email_address, :tent_site, :notes
  json.url ticket_url(ticket, format: :json)
end
