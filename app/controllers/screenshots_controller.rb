class ScreenshotsController < ApplicationController

    def create
        character = Character.find(params[:id])
        if character.screenshots.count >=10
            render json: { errors: ["Maximum exceeded"] } , status: 400
        else
            screenshot = character.screenshots.create(screenshot_params)
            render json: screenshot, status: 200
        end
    end

    def index
        screenshots = Screenshot.all
        render json: screenshots.shuffle(), status: 200
    end



    private
    def screenshot_params
        params.permit(:character_id, :image)
    end
end
