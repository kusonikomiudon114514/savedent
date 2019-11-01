class Student < ApplicationRecord
    has_many :users
    validates :user_id, uniqueness: true
    validates :name, presence: true
end
