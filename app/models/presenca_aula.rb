class PresencaAula < ApplicationRecord
    belongs_to :professor

    has_many :alunos, class_name: "Aluno"
    has_many :presenca_aulas, class_name: "Presenca aula"

    validates :nome, :data, :numero_faltas, presence:true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
