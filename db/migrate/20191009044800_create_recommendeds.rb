class CreateRecommendeds < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendeds do |t|
      t.string :name

      t.timestamps
    end
  end
end
