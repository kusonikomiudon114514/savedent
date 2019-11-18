class CreateMensetus < ActiveRecord::Migration[5.1]
  def change
    create_table :mensetus do |t|
      
      t.integer :status
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
