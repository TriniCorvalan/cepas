json.extract! wine, :id, :name, :year, :vineyard, :created_at, :updated_at
json.url wine_url(wine, format: :json)
