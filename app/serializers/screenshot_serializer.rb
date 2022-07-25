class ScreenshotSerializer < ActiveModel::Serializer
  attributes :id, :screenshot_image_url, :character, :user_id

  def user_id
    object.character.user_id
  end
end
