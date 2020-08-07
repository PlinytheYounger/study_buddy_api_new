class Concept < ApplicationRecord
    belongs_to :user
    has_many :practice_problems
end
