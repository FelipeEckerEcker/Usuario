class PresencaAula < ApplicationRecord
    belongs_to :professor, optional: true

    has_many :aluno, class_name: "Aluno"
    has_many :presenca_aula, class_name: "Presenca aula"

    validates :nome, :data, :numero_faltas, presence:true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
