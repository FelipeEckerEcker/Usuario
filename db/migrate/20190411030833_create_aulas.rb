class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.string :disciplina
      t.date :data
      t.string :objetivoRealizado
      t.string :trabalho

      t.timestamps
    end
  end
end
