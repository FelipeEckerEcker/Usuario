class NotaAluno < ApplicationRecord

    validates :nome_do_aluno, :nota_g1, :nota_g2, :sub_g1, :sub_g2, :data_prova presence:true
end
