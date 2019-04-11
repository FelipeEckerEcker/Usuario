class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :disciplina
      t.string :matricula

      t.timestamps
    end
  end
end