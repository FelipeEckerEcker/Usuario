class Curso < ApplicationRecord
    belongs_to :disciplina, optional: true

    validates :nome, presence:true
    validates :nome, uniqueness: true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
