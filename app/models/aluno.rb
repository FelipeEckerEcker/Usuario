class Aluno < ApplicationRecord

    validates :nome, :documento, :telefone, :pai, :mae, presence:true
end
