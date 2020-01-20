class AddColumnReportjobCheck < ActiveRecord::Migration[5.1]
  def change

    add_column :reportjobs, :check, :boolean
    
  end
end
