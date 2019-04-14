class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :documento
      t.string :email
      t.integer :telefone
      t.string :endereco

      t.timestamps
    end
  end
end
