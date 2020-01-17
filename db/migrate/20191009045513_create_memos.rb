class CreateMemos < ActiveRecord::Migration[5.1]
  def change
    create_table :memos do |t|
      t.integer :user_id
      t.text :content
      t.string :title
      t.boolean :important

      t.timestamps 
    end
  end
end
