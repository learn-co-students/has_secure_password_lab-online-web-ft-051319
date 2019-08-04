class UsersController < ApplicationController
    def create
       
        @user = User.create(user_params)
        session[:user_id] = @user.id
        if !@user.authenticate(params[:password])
          #  binding.pry
           # return head(:forbidden)
            redirect_to(controller: 'users', action: 'new')
        end
    end
end
