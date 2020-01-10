class Reportjob < ApplicationRecord

  belongs_to :mediation
  belongs_to :field
  belongs_to :interview
  belongs_to :user, optional: true
end
