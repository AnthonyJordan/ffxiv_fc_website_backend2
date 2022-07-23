class ScreenshotsController < ApplicationController

    def create
        character = Character.find(params[:id])
        screenshot = character.screenshot.create(screenshot_params)
        render json: screenshot, status: 200
    end

    private
    def character_params
        params.permit(:character_id, :screenshot)
    end
end
