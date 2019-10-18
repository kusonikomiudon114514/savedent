class AddColumnStudent < ActiveRecord::Migration[5.1]
  def change

     add_column :students, :user_id, :integer

  end
end
