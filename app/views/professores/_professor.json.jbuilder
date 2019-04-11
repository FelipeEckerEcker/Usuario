<<<<<<< HEAD
json.extract! professor, :id, :nome, :telefone, :email, :endereco, :created_at, :updated_at
=======
json.extract! professor, :id, :nome, :email, :endereco, :telefone, :documento, :created_at, :updated_at
>>>>>>> d99b35d016db3527669868ae5897ce7e3a71e111
json.url professor_url(professor, format: :json)
