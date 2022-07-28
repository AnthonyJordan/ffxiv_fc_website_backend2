class PasswordsController < ApplicationController
    def forgot
      user = User.find_by(email: params[:_json])
      if user
        render json: {
          alert: "A password reset email has been sent to this email."
        }
        user.send_password_reset
      else
        render json: {
          alert: "A password reset email has been sent to this email."
        }
      end
    end

    def reset
      user = User.find_by("LOWER(email)= ? AND password_reset_token = ?",params[:email].downcase ,params[:password_reset_token])
      if user&.password_token_valid?
        if user.reset_password(params[:password])
            session[:user_id] = user.id
            render json: { alert: "Your password has been successfuly reset!"}, status: 200
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: {error:  ['Link not valid or expired. Try generating a new link.']}, status: :not_found
      end
    end
  
  end