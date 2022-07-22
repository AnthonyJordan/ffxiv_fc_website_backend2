class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  def index
    users= User.all
    render json: users, status: 200
  end

  def update
    @current_user.update(user_params)
    render json: @current_user, status: 200
  end
  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :admin)
  end
end
