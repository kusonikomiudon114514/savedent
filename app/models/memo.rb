class Memo < ApplicationRecord

    belongs_to :user
    validates :user_id, uniqueness: true
    validates :title, presence: true
end
