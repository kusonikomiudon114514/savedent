class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :todohuken
      t.string :localname1
      t.string :localname2

      t.timestamps
    end
  end
end
