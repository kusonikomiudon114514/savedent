class AddColumnReportjobNaiyo < ActiveRecord::Migration[5.1]
  def change
    add_column :reportjobs, :naiyou, :text
  end
end
