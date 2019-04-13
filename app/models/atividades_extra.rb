class AtividadesExtra < ApplicationRecord

    validates :nome, :data, :data_entrega, :curso, :disciplina presence:true
end
