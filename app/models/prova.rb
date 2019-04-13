class Prova < ApplicationRecord

    validates :disciplina, :nota_aluno, :curso, :data presence:true
end
