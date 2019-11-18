class Resumetrancerec < ApplicationRecord
  belongs_to :rirekisyo,optional: true
  has_many :students
  belongs_to:user
end
