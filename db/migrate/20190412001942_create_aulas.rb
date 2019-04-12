class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.string :Disciplina
      t.date :Data
      t.string :Objetivo
      t.string :Realizado

      t.timestamps
    end
  end
end
