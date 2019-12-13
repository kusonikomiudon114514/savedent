class Reportschool < ApplicationRecord

  belongs_to :type
  belongs_to :field
  belongs_to :exam
  belongs_to :recommended
  belongs_to :user
  belongs_to :saw, optional: true
  has_many :rslogs, :dependent => :destroy

  validate :error_check

  def error_check
    if gakkou.blank?
      errors[:base]<<"学校名を入力してください"
    end

    if syozaichi.blank?
      errors[:base]<<"所在地を入力してください"
    end

    if shikennzyou.blank?
      errors[:base]<<"試験場を入力してください" 
    end

    if exam_id == 1
      if japanese.blank? or math.blank? or social.blank? or science.blank? or english.blank?
        errors[:base]<<"科目の試験時間を入力してください(ない場合は０を入力してください)"
      end
    end

    if exam_id == 1
      unless japanese.blank? and math.blank? and social.blank? and science.blank? and english.blank?
        if japanese < 0 or math < 0 or social < 0 or science < 0 or english < 0
          errors[:base]<<"正確な試験時間を入力してください"
        end
      end
    end

    if exam_id == 1
      if detail.blank?  
        errors[:base]<<"問題の内容を入力してください"
      end
    end
   
    unless exam_id == 1
      if japanese.present? or math.present? or social.present? or science.present? or english.present? 
        errors[:base]<<"科目の試験時間を入力しないでください"
      end
    end

    unless exam_id == 1
      if detail.present?
        errors[:base]<<"問題の内容を入力しないでください"
      end
    end

    unless exam_id == 1
      unless recommended_id <= 2
        if mennsetsu.blank?
          errors[:base]<<"面接での質問内容を入力してください"
        end    
      end
    end

    unless exam_id == 1
      if recommended_id == 4 or recommended_id == 6
        if shikenn.blank?
          errors[:base]<<"試験の内容を入力してください"
        end    
      end
    end

    unless exam_id == 1
      unless recommended_id <= 4
        if syoronnbunn.blank?
          errors[:base]<<"小論文（作文）のテーマを入力してください"
        end    
      end
    end

    if exam_id == 1
      if recommended_id >= 2
        errors[:base]<<"形態をーにしてください"
      end
    end

    if exam_id == 1
      if mennsetsu.present?
        errors[:base]<<"面接の質問内容を入力しないでください"
      end
    end

    if exam_id == 1
      if shikenn.present?
        errors[:base]<<"試験内容を入力しないでください"
      end
    end

    if exam_id == 1
      if syoronnbunn.present?
        errors[:base]<<"小論文（作文）テーマを入力しないでください"
      end
    end

    if kanso.blank?
      errors[:base]<<"感想を入力してください"
    end
  end
end
