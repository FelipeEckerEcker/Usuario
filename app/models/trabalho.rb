class Trabalho < ApplicationRecord

    validates :disciplina, :data_de_entrega, :descricao presence:true
end
