class Aluno < ApplicationRecord
    belongs_to :disciplina, optional: true
    belongs_to :trabalho, optional: true
    belongs_to :prova, optional: true
    belongs_to :curso, optional: true
    belongs_to :professor, optional: true
    belongs_to :matricula, optional: true

    has_many :nota_alunos, class_name: "Nota aluno"
    has_many :notas_trabalho, class_name: "Nota trabalho"
    has_many :presenca_aula, class_name: "Presenca aula"

    validates :nome, :documento, :telefone, :email, :pai, :mae, :endereco, presence: true
    validates :email, uniqueness: true 

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
