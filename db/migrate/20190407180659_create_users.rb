class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :email
      t.text :endereco
      t.string :pai
      t.string :mae
      t.string :documento
      t.integer :telefone

      t.timestamps
    end
  end
end
