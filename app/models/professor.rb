class Professor < ApplicationRecord
    belongs_to :provas
    belongs_to :trabalhos
    belongs_to :alunos
    belongs_to :aulas
    
    has_many :notas_trabalhos
    has_many :nota_alunos
    has_many :presenca_aulas

    validates :nome, :documento, :email, :telefone, :endereco, presence:true
end
