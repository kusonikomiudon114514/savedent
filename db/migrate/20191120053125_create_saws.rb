class CreateSaws < ActiveRecord::Migration[5.1]
  def change
    create_table :saws do |t|
      t.string :name

      t.timestamps
    end
  end
end
