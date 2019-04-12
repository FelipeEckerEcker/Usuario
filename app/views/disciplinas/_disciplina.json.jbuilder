json.extract! disciplina, :id, :notaAluno, :presencaAula, :notaTrabalho, :notaProvaLivro, :atividadesExtra, :created_at, :updated_at
json.extract! disciplina, :id, :Curso, :Nome, :created_at, :updated_at
json.url disciplina_url(disciplina, format: :json)
