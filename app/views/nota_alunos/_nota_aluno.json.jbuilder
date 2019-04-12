json.extract! nota_aluno, :id, :nome_do_aluno, :nota_g1, :nota_g2, :sub_g1, :sub_g2, :data_prova, :created_at, :updated_at
json.url nota_aluno_url(nota_aluno, format: :json)
