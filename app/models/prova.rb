class Prova < ApplicationRecord
    belongs_to :professor, optional: true
    belongs_to :aluno, optional: true
    belongs_to :disciplina, optional: true
    belongs_to :curso, optional: true

    has_many :prova, class_name: "Prova"
    has_many :nota_alunos, class_name: "Nota aluno"

    validates :nome, :disciplina, :nota_aluno, :curso, :data, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
}
end
