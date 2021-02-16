
# this controller's purpose is to deal with the User's Log In & Log Out functionality.
# The .authenticate method works hand in hand with the User model’s has_secure_password method to authenticate the password.

class SessionsController < ApplicationController

    def create
        @user = User.find_by(email: session_params[:email])
      
        if @user && @user.authenticate(session_params[:password])
          login!
          render json: {
            logged_in: true,
            user: @user
          }
        else
          render json: { 
            status: 401,
            errors: ['no such user', 'verify credentials and try again or signup']
          }
        end
      end
    def is_logged_in?
        if logged_in? && current_user
          render json: {
            logged_in: true,
            user: current_user
          }
        else
          render json: {
            logged_in: false,
            message: 'no such user'
          }
        end
      end
    def destroy
        logout!
        render json: {
          status: 200,
          logged_out: true
        }
      end
    private
    def session_params
        params.require(:user).permit(:username, :email, :password)
      end
    end