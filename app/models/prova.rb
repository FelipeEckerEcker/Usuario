class Prova < ApplicationRecord
    belongs_to :professor
    belongs_to :alunos
    belongs_to :disciplinas
    belongs_to :cursos

    has_many :provas, class_name: "Prova"
    has_many :nota_alunos, class_name: "Nota aluno"

    validates :nome, :disciplina, :nota_aluno, :curso, :data, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
}
end
