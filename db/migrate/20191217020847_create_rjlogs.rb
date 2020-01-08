class CreateRjlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :rjlogs do |t|
      t.integer :user_id
      t.integer :reportjob_id

      t.timestamps
    end
  end
end
