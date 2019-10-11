class CreateRirekisyos < ActiveRecord::Migration[5.1]
  def change
    create_table :rirekisyos do |t|
      t.string :title
      t.date :hizuke

      t.timestamps
    end
  end
end
