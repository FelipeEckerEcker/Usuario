class Professor < ApplicationRecord
    belongs_to :provas
    belongs_to :trabalhos
    belongs_to :alunos
    belongs_to :aulas
    
    has_many :notas_trabalhos, class_name: "Nota trabalho"
    has_many :nota_alunos, class_name: "Nota aluno"
    has_many :presenca_aulas, class_name: "Presenca aula"

    validates :nome, :documento, :email, :telefone, :endereco, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
end
