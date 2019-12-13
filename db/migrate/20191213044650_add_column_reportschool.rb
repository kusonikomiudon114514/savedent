class AddColumnReportschool < ActiveRecord::Migration[5.1]
  def change

    add_column :reportschools, :check, :boolean

  end
end
