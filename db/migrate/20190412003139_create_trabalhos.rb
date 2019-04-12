class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.string :Disciplina
      t.date :dataEntrega
      t.text :descricao

      t.timestamps
    end
  end
end
