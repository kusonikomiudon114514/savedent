class Reportjob < ApplicationRecord

  belongs_to :mediation
  belongs_to :interview
  belongs_to :user

end
