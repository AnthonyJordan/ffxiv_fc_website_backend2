class CharactersController < ApplicationController
    skip_before_action :authorize, only: :index

    def create
        # byebug
        character = Character.create!(character_params)
        render json: character, status: :created
    end
    def index
        characters = Character.all
        render json: characters, status: 200
    end
    def show

    end

    private
    def character_params
        params.permit(:first_name, :last_name, :role, :bio, :house_location, :user_id)
    end
end
