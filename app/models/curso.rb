class Curso < ApplicationRecord
    belongs_to :alunos
    
    has_many :disciplinas

    validates :nome, presence: true
end
