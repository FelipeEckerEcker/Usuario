class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :email
      t.text :endereco
      t.integer :telefone
      t.string :documento

      t.timestamps
    end
  end
end
