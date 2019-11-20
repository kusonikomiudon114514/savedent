class CreateRslogs < ActiveRecord::Migration[5.1]
  def change
    create_table :rslogs do |t|
      t.integer :user_id
      t.integer :reportschool_id

      t.timestamps
  end
end
