class AtividadesExtra < ApplicationRecord
    belongs_to :professor
    belongs_to :alunos

    has_many :nota_alunos

    validates :nome, :data, :data_entrega, :curso, :disciplina, presence:true
end
