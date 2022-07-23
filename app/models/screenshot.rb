class Screenshot < ApplicationRecord
    has_one_attached :image
    has_many :comments, dependent: :destroy
    belongs_to :character

    def screenshot_image_url
        return Rails.application.routes.url_helpers.url_for(image) if image.attached?
    end
end
