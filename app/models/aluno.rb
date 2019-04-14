class Aluno < ApplicationRecord
    belongs_to :disciplinas
    belongs_to :trabalhos
    belongs_to :provas
    belongs_to :cursos

    has_many :nota_alunos
    has_many :notas_trabalhos
    has_many :matriculas
    has_many :presenca_aulas

    validates :nome, :documento, :telefone, :email, :pai, :mae, :endereco, presence: true

end
