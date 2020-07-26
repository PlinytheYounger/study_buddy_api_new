class Concept < ApplicationRecord
    has_many :users, through: :comprehensions
    has_many :practice_problems
end
