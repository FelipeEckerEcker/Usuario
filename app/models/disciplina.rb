class Disciplina < ApplicationRecord
    belongs_to :professor, optional: true
    belongs_to :curso, optional: true

    has_many :aluno, class_name: "Aluno"

    validates :nome, :curso, presence:true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
