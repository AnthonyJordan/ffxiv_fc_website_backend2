class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
    has_many :characters
    has_many :comments
    has_one_attached :profile_picture
    has_many_attached :images
end
