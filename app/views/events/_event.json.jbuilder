json.extract! event, :id, :local_id, :organization_id, :name, :description, :date, :status, :created_at, :updated_at
json.url event_url(event, format: :json)