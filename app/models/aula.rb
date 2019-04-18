class Aula < ApplicationRecord
    belongs_to :alunos
    belongs_to :professor

    has_many :presenca_aulas, class_name: "Presenca aula"

    validates :disciplina, :data, :objetivo, :realizado, presence:true

    scope :por_disciplina, lambda { |disciplina = nil|
        where(disciplina: disciplina) if disciplina
    }
end
