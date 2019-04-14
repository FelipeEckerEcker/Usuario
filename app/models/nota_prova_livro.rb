class NotaProvaLivro < ApplicationRecord
    belongs_to :professores
    belongs_to :alunos

    has_many :nota_alunos

    validates :nome, :data, :curso, :nota_aluno, presence:true
end
