class Prova < ApplicationRecord

    validates :nome, :disciplina, :nota_aluno, :curso, :data, presence:true
end
