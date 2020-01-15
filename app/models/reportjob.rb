class Reportjob < ApplicationRecord

  belongs_to :user, optional: true
  has_many :rjlogs, :dependent => :destroy
  belongs_to :field
  belongs_to :mediation
  belongs_to :interview

  #validate :error_check

end
