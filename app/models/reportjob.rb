class Reportjob < ApplicationRecord

  bolongs_to :mediation
  bolongs_to :interview
  bolongs_to :user

end
