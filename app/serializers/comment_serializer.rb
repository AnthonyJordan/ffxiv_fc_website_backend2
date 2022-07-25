class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_text, :character_id , :character_picture_url, :user_id

  def character_picture_url
    object.character.character_picture_url
  end
  def user_id
    object.character.user_id
  end
end
