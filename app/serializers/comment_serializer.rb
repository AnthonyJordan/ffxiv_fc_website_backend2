class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_text, :character_id , :character_picture_url, :user_id, :character_name

  def character_picture_url
    object.character.character_picture_url
  end
  def user_id
    object.character.user_id
  end
  def character_name
    object.character.first_name + " " + object.character.last_name
  end
end
