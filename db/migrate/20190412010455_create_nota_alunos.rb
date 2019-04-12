class CreateNotaAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :nota_alunos do |t|
      t.string :nome_do_aluno
      t.integer :nota_g1
      t.integer :nota_g2
      t.integer :sub_g1
      t.integer :sub_g2
      t.date :data_prova

      t.timestamps
    end
  end
end
