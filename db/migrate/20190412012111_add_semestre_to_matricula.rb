class AddSemestreToMatricula < ActiveRecord::Migration[5.2]
  def change
    add_column :matriculas, :semestre, :string
  end
end
