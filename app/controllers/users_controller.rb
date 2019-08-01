class UsersController < ApplicationController

  def create
    @user=User.create(user_params)
    if @user.save
      session[:user_id]=@user.id
    else
      redirect_to new_user_path
    end
    # if @user.password_confirmation == params[:user][:password]
    #   # @user.authenticate(params[:user][:password])
    #   session[:user_id]=@user.id
    # else
    #   redirect_to new_user_path
    # end
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:name, :password_confirmation, :password)
  end

end
