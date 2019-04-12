class CreateAtividadesExtras < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades_extras do |t|
      t.string :nome
      t.date :data
      t.date :data_entrega
      t.string :curso
      t.string :disciplina

      t.timestamps
    end
  end
end
