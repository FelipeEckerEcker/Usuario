class Aula < ApplicationRecord
    belongs_to :aluno, optional: true
    belongs_to :professor, optional: true

    has_many :presenca_aula, class_name: "Presenca aula" 

    validates :disciplina, :data, :objetivo, :realizado, presence:true

    scope :por_disciplina, lambda { |disciplina = nil|
        where(disciplina: disciplina) if disciplina
    }
end
 