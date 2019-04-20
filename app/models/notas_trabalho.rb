class NotasTrabalho < ApplicationRecord
    belongs_to :professor, optional: true
    belongs_to :trabalho, optional: true
    
    has_many :aluno, class_name: "Aluno"

    validates :nome, :data, :curso, :disciplina, :nota_aluno, presence:true

    scope :por_nome, lambda { |nome = nil|
    where(nome: nome) if nome
}
end
