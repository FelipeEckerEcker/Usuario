class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.integer :nota
      t.string :presenca
      t.integer :notasTrabalho
      t.integer :notasProvaLivro
      t.string :atividades

      t.timestamps
    end
  end
end
