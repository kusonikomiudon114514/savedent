class Reportschool < ApplicationRecord

  belongs_to :type
  belongs_to :field
  belongs_to :exam
  belongs_to :recommended
  belongs_to :user

  validate :error_check

  def error_check
    if gakkou.blank?
      errors[:base]<<"学校名を入力してください"
    end

    if gakubu.blank?
      errors[:base]<<"学部名を入力してください"
    end

    if syozaichi.blank?
      errors[:base]<<"所在地を入力してください"
    end

    if shikennzyou.blank?
      errors[:base]<<"試験場を入力してください" 
    end

    if exam_id == 1
      if japanese.blank? or math.blank? or social.blank? or science.blank? or english.blank?
        errors[:base]<<"試験時間を記入してください"
      end
    end

    if exam_id == 1
      if detail.blank?  
        errors[:base]<<"問題の内容を記入してください"
      end
    end

    unless exam_id == 1
      unless recommended_id == 1
        if mennsetsu.blank?
          errors[:base]<<"面接での質問内容を記入してください"
        end    
      end
    end

    unless exam_id == 1
      if recommended_id == 3 or recommended_id == 5
        if shikenn.blank?
          errors[:base]<<"試験の内容を記入してください"
        end    
      end
    end

    unless exam_id == 1
      unless recommended_id <= 3
        if syoronnbunn.blank?
          errors[:base]<<"小論文（作文）のテーマを記入してください"
        end    
      end
    end



    if kanso.blank?
      errors[:base]<<"感想を入力してください"
    end
  end
end
