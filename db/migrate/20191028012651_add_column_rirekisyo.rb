class AddColumnRirekisyo < ActiveRecord::Migration[5.1]
  def change
    add_column :rirekisyos,:user_id,:intenger
  end
end
