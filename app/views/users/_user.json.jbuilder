json.extract! user, :id, :role_id, :name, :telephone, :email, :status, :last_login, :created_at, :updated_at
json.url user_url(user, format: :json)