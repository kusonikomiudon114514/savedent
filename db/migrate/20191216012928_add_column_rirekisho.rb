class AddColumnRirekisho < ActiveRecord::Migration[5.1]
  def change
    
    add_column :rirekisyos, :filename, :string
    
  end
end
