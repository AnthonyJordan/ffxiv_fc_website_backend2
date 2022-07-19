class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_many :characters
    has_many :comments
    has_one_attached :profile_picture
    has_many_attached :images

    def profile_picture_url
        return url_for(profile_picture) if profile_picture.attached?
    end
end
