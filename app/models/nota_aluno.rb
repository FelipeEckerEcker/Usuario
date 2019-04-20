class NotaAluno < ApplicationRecord
    belongs_to :professor, optional: true
    belongs_to :nota_g1, optional:true
    belongs_to :nota_g2, optional:true 
    belongs_to :nota_prova_livro, optional;true 


    has_many :aluno, class_name: "Aluno"

    validates :nome_do_aluno, :nota_g1, :nota_g2, :sub_g1, :sub_g2, :data_prova, presence:true

    scope :por_nome_do_aluno, lambda { |nome_do_aluno = nil|
    where(nome_do_aluno: nome_do_aluno) if nome_do_aluno
}
end
 