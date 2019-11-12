class ChangeDatatypeHidukeOfStudent < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :hiduke1, :date
    change_column :students, :hiduke2, :date
    change_column :students, :hiduke3, :date
    change_column :students, :hiduke4, :date
    change_column :students, :hiduke5, :date
    change_column :students, :hiduke6, :date
  end
end
