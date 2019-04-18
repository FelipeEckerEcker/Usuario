class Trabalho < ApplicationRecord
    belongs_to :alunos
    belongs_to :professores

    has_many :notas_trabalhos, class_name:"Nota trabalho"

    validates :nome, :disciplina, :curso, :data_de_entrega, :descricao, presence:true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
