class Character < ApplicationRecord
    belongs_to :user
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_one_attached :character_picture
    has_many :comments, dependent: :destroy
    has_many :screenshots, dependent: :destroy



    def character_picture_url
        return Rails.application.routes.url_helpers.url_for(character_picture) if character_picture.attached?
    end
end
