json.array!(@wineries) do |winery|
  json.extract! winery, :id, :name, :location, :website, :image, :phone_number, :visitors, :tours, :pets
  json.url winery_url(winery, format: :json)
end
