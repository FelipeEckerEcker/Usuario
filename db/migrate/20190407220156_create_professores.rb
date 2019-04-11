class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :endereco

      t.timestamps
    end
  end
end
