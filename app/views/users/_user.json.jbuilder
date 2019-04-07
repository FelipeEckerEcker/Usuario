json.extract! user, :id, :nome, :email, :endereco, :pai, :mae, :documento, :telefone, :created_at, :updated_at
json.url user_url(user, format: :json)
