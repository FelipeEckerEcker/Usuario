class Disciplina < ApplicationRecord
    belongs_to :professores
    belongs_to :cursos

    validates :nome, :curso, presence:true
end
