class User < ApplicationRecord
    has_many :interviews
    has_many :relationships
    has_many :comprehensions
    has_many :concepts, through: :comprehensions
    has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username
end
