class CreatePresencaAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :presenca_aulas do |t|
      t.string :nome
      t.date :data
      t.integer :numero_faltas

      t.timestamps
    end
  end
end
