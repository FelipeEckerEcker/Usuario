class CreateProvas < ActiveRecord::Migration[5.2]
  def change
    create_table :provas do |t|
      t.string :disciplina
      t.integer :nota_aluno
      t.string :curso
      t.date :data

      t.timestamps
    end
  end
end
