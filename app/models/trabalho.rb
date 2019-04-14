class Trabalho < ApplicationRecord

    validates :nome, :disciplina, :curso, :data_de_entrega, :descricao, presence:true
end
