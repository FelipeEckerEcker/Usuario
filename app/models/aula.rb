class Aula < ApplicationRecord

    validates :disciplina, :data, :objetivo, :realizado, presence:true
end
