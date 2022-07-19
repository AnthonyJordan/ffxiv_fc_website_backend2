class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  def update
    if(:profile_picture)
        @current_user.profile_picture.attach(params[:profile_picture])
    end
    @current_user.update(user_params)
    byebug
    render json: @current_user, status: 200
  end
  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :profile_picture, :admin)
  end
end
