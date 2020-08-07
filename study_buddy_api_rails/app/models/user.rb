class User < ApplicationRecord
    has_many :interviews, dependent: :destroy
    has_many :relationships, dependent: :destroy
    has_many :concepts, dependent: :destroy
    has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username
end
