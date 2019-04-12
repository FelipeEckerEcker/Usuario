json.extract! notas_trabalho, :id, :nome, :data, :curso, :disciplina, :nota_aluno, :created_at, :updated_at
json.url notas_trabalho_url(notas_trabalho, format: :json)
