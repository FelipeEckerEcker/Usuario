class Disciplina < ApplicationRecord

    validates :nota, :presenca, :notastrabalho, :notasprovalivro, presence:true

end
