class Curso < ApplicationRecord
    belongs_to :disciplinas

    validates :nome, presence:true
end
