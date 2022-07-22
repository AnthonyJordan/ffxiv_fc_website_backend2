class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :role, :house_location, :bio, :user_id, :character_picture_url
end
