class ChangeDatatypeHidukeOfStudent < ActiveRecord::Migration[5.1]
  #def change
  #  change_column :students, :hiduke1, :date
  #  change_column :students, :hiduke2, :date
  #  change_column :students, :hiduke3, :date
  #  change_column :students, :hiduke4, :date
  #  change_column :students, :hiduke5, :date
  #  change_column :students, :hiduke6, :date
  #end

  def up
    change_column :students, :hiduke1, :date
    change_column :students, :hiduke2, :date
    change_column :students, :hiduke3, :date
    change_column :students, :hiduke4, :date
    change_column :students, :hiduke5, :date
    change_column :students, :hiduke6, :date
  end
  def down
    change_column :students, :hiduke1, :integer
    change_column :students, :hiduke2, :integer
    change_column :students, :hiduke3, :integer
    change_column :students, :hiduke4, :integer
    change_column :students, :hiduke5, :integer
    change_column :students, :hiduke6, :integer
  end

end
