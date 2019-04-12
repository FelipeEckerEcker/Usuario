class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :Curso
      t.string :Nome

      t.timestamps
    end
  end
end
