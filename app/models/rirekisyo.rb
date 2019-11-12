class Rirekisyo < ApplicationRecord

    belongs_to :user
    has_many :resumetrancerecs

end
