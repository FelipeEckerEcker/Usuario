class Trabalho < ApplicationRecord
    belongs_to :aluno, optional: true
    belongs_to :professor, optional: true

    has_many :notas_trabalho, class_name:"Nota trabalho"

    validates :nome, :disciplina, :curso, :data_de_entrega, :descricao, presence:true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
