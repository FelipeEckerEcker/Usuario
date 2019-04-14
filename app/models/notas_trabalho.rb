class NotasTrabalho < ApplicationRecord
    belongs_to :professor
    
    has_many :alunos

    validates :nome, :data, :curso, :disciplina, :nota_aluno, presence:true
end
