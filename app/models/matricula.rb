class Matricula < ApplicationRecord
    belongs_to :alunos

    validates :ra, :nome, :curso, :disciplina, :endereco, :cpf, :data, :semestre, presence:true

    scope :por_ra, lambda { |ra = nil|
    where(ra: ra) if ra
}
end
