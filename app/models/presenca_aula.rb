class PresencaAula < ApplicationRecord

    validates :nome, :data, :numero_faltas presence:true
end
