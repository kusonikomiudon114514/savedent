class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :jobsee
      t.string :jobcreate;string
      t.string :schoolsee
      t.string :schoolcreate

      t.timestamps
    end
  end
end
