class Reportschool < ApplicationRecord

  belongs_to :type
  belongs_to :field
  belongs_to :exam
  belongs_to :recommended
  belongs_to :user

  validate :error_check

  def error_check
    if type_id.blank?
      errors[:base]<<"学校種を選択してください"
    end

    if gakkou.blank?
      errors[:base]<<"学校名を入力してください"
    end
  end  

end
