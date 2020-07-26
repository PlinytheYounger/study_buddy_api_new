class User < ApplicationRecord
    has_many :interviews
    has_many :relationships
    has_many :comprehensions
    has_many :concepts, through: :comprehensions
end
