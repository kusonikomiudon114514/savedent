class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :user_id
      t.string :name
      t.boolean :admin

      t.timestamps
    end
  end
end
