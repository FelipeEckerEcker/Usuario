class Professor < ApplicationRecord
    belongs_to :prova, optional: true
    belongs_to :trabalho, optional: true
    belongs_to :aluno, optional: true
    belongs_to :presenca_aula, optional: true
    belongs_to :atividades_extra, optional: true
    
    has_many :notas_trabalho, class_name: "Nota trabalho"
    has_many :nota_alunos, class_name: "Nota aluno"
    has_many :presencas_aula, class_name: "Presenca aula"

    validates :nome, :documento, :email, :telefone, :endereco, presence:true
    validates :email, uniqueness: true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
