class Curso < ApplicationRecord
    validates :nome, :disciplinas, presence: true
end
