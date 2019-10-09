class CreateResumetrancerecs < ActiveRecord::Migration[5.1]
  def change
    create_table :resumetrancerecs do |t|
      t.integer :resume_id
      t.integer :user_id

      t.timestamps
    end
  end
end
