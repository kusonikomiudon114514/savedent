class CreateReportjobs < ActiveRecord::Migration[5.1]
  def change
    create_table :reportjobs do |t|
      t.integer :status
      t.integer :user_id
      t.date :day
      t.string :syokusyu
      t.string :zigyousyo
      t.integer :mediation_id
      t.string :syozaiti
      t.string :shikennzyou
      t.integer :zyukennsyasuu
      t.boolean :ithizi_hikki
      t.boolean :ithizi_tekisei
      t.boolean :ithizi_sakubun 
      t.boolean :ithizi_mensetsu
      t.integer :zikan_ithite 
      t.integer :zikan_ithihi
      t.integer :zikan_ithime
      t.integer :zikan_ithisa
      t.boolean :nizi_hikki
      t.boolean :nizi_tekisei
      t.boolean :nizi_mennsetsu
      t.integer :zikan_nihi
      t.integer :zikan_nite
      t.integer :zikan_nime
      t.integer :zikan_nisa
      t.integer :subject_id
      t.integer :zikan_japanese
      t.integer :zikan_math
      t.integer :zikan_social
      t.integer :zikan_english
      t.integer :zikan_ippann
      t.integer :zikan_tekisei
      t.integer :interview_id
      t.integer :iin
      t.integer :zikan_mensetsu
      t.text :shitsumon
      t.text :mensetsusonota
      t.string :sakubun
      t.string :bunnsyouryou
      t.text :other

      t.timestamps
    end
  end
end
