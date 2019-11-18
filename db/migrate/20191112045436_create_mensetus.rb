class CreateMensetus < ActiveRecord::Migration[5.1]
  def change
    create_table :mensetus do |t|
      
      t.integer :status
      t.string :name
      t.datetime :start_time
      t.integer :user_id

      t.timestamps
    end
  end

end
