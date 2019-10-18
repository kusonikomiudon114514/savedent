class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :rirekisyos,:reason,:text
    add_column :rirekisyos,:syumi,:text
    add_column :rirekisyos,:katsudo,:text
    add_column :rirekisyos,:biko,:text
    add_column :rirekisyos,:renraku,:string
    add_column :rirekisyos,:renhuri,:string
  end
end
