class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create
  
    def create
      user = User.find_by("LOWER(email)= ?",params[:email].downcase)
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: 200
      else
        render json: { errors: ["Invalid email or password"] }, status: :unauthorized
      end
    end
    def show
       user = User.find_by(id: session[:user_id])
       render json: user, status: 200
    end
    def destroy
      session.delete :user_id
      head :no_content
    end
  
  end