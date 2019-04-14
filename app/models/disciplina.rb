class Disciplina < ApplicationRecord
    belongs_to :professores

    validates :nome, :curso, presence:true
end
