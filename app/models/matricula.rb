class Matricula < ApplicationRecord
    belongs_to :alunos

    validates :ra, :nome, :curso, :disciplina, :endereco, :cpf, :data, :semestre, presence:true
end
