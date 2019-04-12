class Professor < ApplicationRecord
    validates :nome, :email, :endereco, :documento, :telefone, presence:true

end
