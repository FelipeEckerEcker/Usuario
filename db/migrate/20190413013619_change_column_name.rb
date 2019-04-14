class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cursos, :Nome, :nome
  end
end
rails g migration ChangeColumnName
