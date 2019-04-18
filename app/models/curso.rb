class Curso < ApplicationRecord
    belongs_to :disciplinas

    validates :nome, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
end
