class Disciplina < ApplicationRecord
    belongs_to :professores
    belongs_to :cursos

    validates :nome, :curso, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
end
