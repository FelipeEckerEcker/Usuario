class Aluno < ApplicationRecord
    belongs_to :disciplinas
    belongs_to :trabalhos
    belongs_to :provas
    belongs_to :cursos

    has_many :nota_alunos, class_name: "Nota aluno"
    has_many :notas_trabalhos, class_name: "Nota trabalho"
    has_many :matriculas, class_name: "Matricula"
    has_many :presenca_aulas, class_name: "Presenca aula"

    validates :nome, :documento, :telefone, :email, :pai, :mae, :endereco, presence: true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
