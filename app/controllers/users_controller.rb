class UsersController < ApplicationController

  def create
    @user=User.create(user_params)
    if @user.password_confirmation != params[:user][:password]
      # !@user.authenticate(params[:user][:password])
      redirect_to new_user_path
    else
      session[:user_id]=@user.id
    end
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:name, :password_confirmation, :password)
  end

end
