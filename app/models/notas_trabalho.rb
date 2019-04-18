class NotasTrabalho < ApplicationRecord
    belongs_to :professor
    
    has_many :alunos, class_name: "Aluno"

    validates :nome, :data, :curso, :disciplina, :nota_aluno, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
end
