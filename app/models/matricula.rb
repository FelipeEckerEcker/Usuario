class Matricula < ApplicationRecord
    belongs_to :aluno, optional: true

    validates :ra, :nome, :curso, :disciplina, :endereco, :cpf, :data, :semestre, presence:true

    scope :por_ra, lambda { |ra = nil|
    where(ra: ra) if ra
}
end
