class Reportjob < ApplicationRecord

  belongs_to :user
  has_many :rjlogs, :dependent => :destroy
  
  belongs_to :field
  # belongs_to :zigyousyo
  belongs_to :mediation
  # belongs_to :syozaiti
  # belongs_to :shikenzyou
  belongs_to :interview
                                # ~~_idがあるものだけ書く

  #validate :error_check
  #def error_check
  #  if zigyousyo.blank?
  #    errors[:base]<<"事業所名を入力してください"
  #  end

  #  if syozaiti.blank?
  #    errors[:base]<<"所在地を入力してください"
  #  end

  #  if shikennzyou.blank?
  #    errors[:base]<<"試験場を入力してください"
  #  end
  #end
end
