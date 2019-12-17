class AddColumnNewpaper < ActiveRecord::Migration[5.1]
  def change

    add_column :newpapers, :check, :boolean

  end
end
