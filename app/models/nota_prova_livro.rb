class NotaProvaLivro < ApplicationRecord

    validates :nome, :data, :curso, :nota_aluno, presence:true
end
