class Professor < ApplicationRecord

    validates :nome, :documento, :email, :telefone, :endereco, presence:true
end
