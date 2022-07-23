class CharactersController < ApplicationController
    skip_before_action :authorize, only: :index

    def create
        character = Character.create!(character_params)
        render json: character, status: :created
    end
    def index
        characters = Character.all
        render json: characters, status: 200
    end
    def showAll
        characters =Character.where(user_id = params[:id]).all
        render json: characters, status: 200
    end
    def update
        character = Character.find(params[:id])
        character.update(character_params)
        render json: character, status: 200
    end
    def destroy
        character = Character.find(params[:id])
        character.destroy
        head :no_content
    end

    private
    def character_params
        params.permit(:first_name, :last_name, :role, :bio, :house_location, :user_id, :character_picture)
    end
end
