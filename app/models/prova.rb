class Prova < ApplicationRecord
    belongs_to :professor
    belongs_to :alunos
    belongs_to :disciplinas
    belongs_to :cursos

    has_many :provas
    has_many :nota_alunos

    validates :nome, :disciplina, :nota_aluno, :curso, :data, presence:true
end
