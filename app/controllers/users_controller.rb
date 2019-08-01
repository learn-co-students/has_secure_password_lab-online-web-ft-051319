class UsersController < ApplicationController

    def new
        @user = User.new 
    end

    def create
        # binding.pry
        # if params[:password] != params[:password_confirmation]
        #     redirect_to '/new'
        # else
        #     @user = User.create(user_params)
        #     session[:user_id] = @user.id

        #     redirect_to '/show'
        # end

        # binding.pry 
        if params[:user][:password] == params[:user][:password_confirmation]
            @user = User.create(user_params)
            session[:user_id] = @user.id 
        else
            redirect_to '/new'
        end
    end

    def show
        @user = User.find_by(session[:user_id])
    end

    private 

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
