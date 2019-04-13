class NotasTrabalho < ApplicationRecord

    validates :nome, :data, :curso, :disciplina, :nota_aluno presence:true
end
