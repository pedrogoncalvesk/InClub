json.extract! local, :id, :name, :description, :lat, :long, :status, :created_at, :updated_at
json.url local_url(local, format: :json)