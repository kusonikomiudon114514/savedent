class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :namehurigana
      t.date :seinen
      t.string :no
      t.string :seibetsu
      t.string :zyusho
      t.string :zyushohurigana
      t.text :shikaku
      t.text :syutokubi
      t.string :gakureki1
      t.string :gakureki2
      t.string :gakureki3
      t.string :gakureki4
      t.string :gakureki5
      t.string :gakureki6
      t.integer :hiduke1
      t.integer :hiduke2
      t.integer :hiduke3
      t.integer :hiduke4
      t.integer :hiduke5
      t.integer :hiduke6

      t.timestamps
    end
  end
end
