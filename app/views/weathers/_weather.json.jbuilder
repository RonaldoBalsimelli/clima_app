json.extract! weather, :id, :city, :temperature, :description, :created_at, :updated_at
json.url weather_url(weather, format: :json)
