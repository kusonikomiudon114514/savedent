class Reportschool < ApplicationRecord

  belongs_to :type
  belongs_to :field
  belongs_to :exam
  belongs_to :recommended
  belongs_to :user

end
