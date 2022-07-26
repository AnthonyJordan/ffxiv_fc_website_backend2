class ScreenshotsController < ApplicationController
    skip_before_action :authorize, except: :create

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

    def characterIndex
        character = Character.find(params[:id])
        render json: character.screenshots, status: 200
    end

    def destroy
        screenshot = Screenshot.find(params[:id])
        screenshot.destroy
        head :no_content
    end
    private
    def screenshot_params
        params.permit(:character_id, :image)
    end
end
