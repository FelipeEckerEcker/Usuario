class PresencaAula < ApplicationRecord
    belongs_to :professor

    has_many :alunos
    has_many :presenca_aulas

    validates :nome, :data, :numero_faltas, presence:true
end
