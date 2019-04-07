json.extract! aluno, :id, :nome, :email, :endereco, :pai, :mae, :documento, :telefone, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
