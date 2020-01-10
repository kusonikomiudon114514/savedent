class Reportjob < ApplicationRecord

  belongs_to :user, optional: true
  has_many :rjlogs, :dependent => :destroy

  #validate :error_check

end
