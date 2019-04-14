class Trabalho < ApplicationRecord
    belongs_to :alunos
    belongs_to :professores

    has_many :notas_trabalhos

    validates :nome, :disciplina, :curso, :data_de_entrega, :descricao, presence:true
end
