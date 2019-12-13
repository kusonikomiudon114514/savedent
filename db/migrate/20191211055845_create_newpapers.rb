class CreateNewpapers < ActiveRecord::Migration[5.1]
  def change
    create_table :newpapers do |t|
      t.integer :user_id
      t.integer :reportschool_id

      t.timestamps
    end
  end
end
