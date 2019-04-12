class CreateNotasTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :notas_trabalhos do |t|
      t.string :nome
      t.date :data
      t.string :curso
      t.string :disciplina
      t.integer :nota_aluno

      t.timestamps
    end
  end
end
