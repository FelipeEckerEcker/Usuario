class Disciplina < ApplicationRecord

    validates :curso, :nome presence:true
end
