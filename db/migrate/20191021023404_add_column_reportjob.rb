class AddColumnReportjob < ActiveRecord::Migration[5.1]
  def change

   add_column :reportjobs, :field_id, :integer

  end
end
