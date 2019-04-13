class Aluno < ApplicationRecord

    validates :nome, :documento, :telefone, :email, :pai, :mae, :endereco presence:true
end
