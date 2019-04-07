class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.string :disciplina
      t.date :data
      t.text :objetivo
      t.text :realizado
      t.string :trabalho

      t.timestamps
    end
  end
end
