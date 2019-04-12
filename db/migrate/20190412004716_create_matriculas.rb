class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.integer :ra
      t.string :nome
      t.string :curso
      t.string :disciplina
      t.string :endereco
      t.string :cpf
      t.date :data

      t.timestamps
    end
  end
end
