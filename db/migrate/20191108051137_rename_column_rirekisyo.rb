class RenameColumnRirekisyo < ActiveRecord::Migration[5.1]
  def change
    rename_column :resumetrancerecs,:resume_id,:rirekisyo_id
  end
end
