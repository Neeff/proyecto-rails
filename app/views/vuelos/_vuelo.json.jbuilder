json.extract! vuelo, :id, :origen, :h_llegada, :h_salida, :destino, :created_at, :updated_at
json.url vuelo_url(vuelo, format: :json)
