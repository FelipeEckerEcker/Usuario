class Matricula < ApplicationRecord

    validates :ra, :nome, :curso, :disciplina, :endereco, :cpf, :data, :semestre presence:true
end
