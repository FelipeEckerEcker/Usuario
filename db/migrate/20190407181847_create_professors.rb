class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :email
      t.string :documento
      t.text :endereco
      t.integer :telefone

      t.timestamps
    end
  end
end
