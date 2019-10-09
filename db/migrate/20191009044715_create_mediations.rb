class CreateMediations < ActiveRecord::Migration[5.1]
  def change
    create_table :mediations do |t|
      t.string :name

      t.timestamps
    end
  end
end
