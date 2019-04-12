class CreateNotaProvaLivros < ActiveRecord::Migration[5.2]
  def change
    create_table :nota_prova_livros do |t|
      t.string :nome
      t.date :data
      t.string :curso
      t.integer :nota_aluno

      t.timestamps
    end
  end
end
