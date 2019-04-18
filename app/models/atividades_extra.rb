class AtividadesExtra < ApplicationRecord
    belongs_to :professor
    belongs_to :alunos

    has_many :nota_alunos, class_name: "Nota aluno"

    validates :nome, :data, :data_entrega, :curso, :disciplina, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
end
