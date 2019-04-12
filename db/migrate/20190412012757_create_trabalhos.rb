class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.string :disciplina
      t.date :data_de_entrega
      t.text :descricao

      t.timestamps
    end
  end
end
