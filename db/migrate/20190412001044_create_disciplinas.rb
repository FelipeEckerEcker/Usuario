class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.integer :notaAluno
      t.string :presencaAula
      t.integer :notaTrabalho
      t.integer :notaProvaLivro
      t.string :atividadesExtra

      t.timestamps
    end
  end
end
