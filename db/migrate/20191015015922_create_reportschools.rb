class CreateReportschools < ActiveRecord::Migration[5.1]
  def change
    create_table :reportschools do |t|
      t.integer :status
      t.integer :user_id
      t.integer :type_id
      t.integer :field_id
      t.string :gakkou
      t.string :gakubu
      t.string :gakka
      t.string :course
      t.string :syozaichi
      t.string :shikennzyou
      t.date :gokaku
      t.date :shikennbi
      t.integer :exam_id
      t.text :detail
      t.integer :japanese
      t.integer :math
      t.integer :social
      t.integer :science
      t.integer :english
      t.integer :recommended_id
      t.text :mennsetsu
      t.text :syoronnbunn
      t.text :shikenn
      t.text :kanso

      t.timestamps
    end
  end
end
