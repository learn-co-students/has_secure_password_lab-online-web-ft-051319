class UsersController < ApplicationController
    before_action :require_login, only: [:homepage]

    def new
    end

    def create
        if params[:user][:password] != params[:user][:password_confirmation]
            redirect_to signup_path
        else
            @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to root_path
        end
    end

    def homepage
        @user = User.find_by(id: session[:user_id])
    end

    private
    def require_login
        redirect_to login_path unless session.include? :user_id
    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
