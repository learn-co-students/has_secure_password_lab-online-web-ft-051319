class UsersController < ApplicationController
  def new
  end

  def create
#    binding.pry
      @user= User.create(user_params)
      #binding.pry
    if @user == "" or @user.id == nil
      redirect_to new_user_path, alert: "passwords don't match"
    else
      # binding.pry
      session[:user_id] = @user.id
    # username=params[:name]

    # else
    #   session[:name]=username
    #   binding.pry
      redirect_to user_path(@user.id)
    end
  end

  def show
#    @user=User.find(name: params[:id])
    @user = User.find(params[:id])

  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
