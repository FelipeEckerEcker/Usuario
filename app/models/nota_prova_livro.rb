class NotaProvaLivro < ApplicationRecord
    belongs_to :professor, optional: true
    belongs_to :aluno, optional: true

    has_many :nota_alunos, class_name: "Nota aluno"

    validates :nome, :data, :curso, :nota_aluno, presence:true

    scope :por_nome, lambda { |nome = nil|
        where(nome: nome) if nome
    }
end
