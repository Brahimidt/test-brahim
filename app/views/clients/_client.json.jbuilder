json.extract! client, :id, :name, :email, :phoneNumber, :biography, :status, :created_at, :updated_at
json.url client_url(client, format: :json)