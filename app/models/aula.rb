class Aula < ApplicationRecord
    belongs_to :alunos
    belongs_to :professor

    has_many :presenca_aulas

    validates :disciplina, :data, :objetivo, :realizado, presence:true
end
