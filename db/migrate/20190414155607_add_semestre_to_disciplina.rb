class AddSemestreToDisciplina < ActiveRecord::Migration[5.2]
  def change
    add_column :disciplinas, :semestre, :string
  end
end
