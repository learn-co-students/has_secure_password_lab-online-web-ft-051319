class UsersController < ApplicationController
    def create
        binding.pry
        @user = User.create(user_params)
        session[:user_id] = @user.id
        if !@user.authenticate(params[:password])
            return head(:forbidden)
            redirect_to(controller: 'users', action: 'new')
        end
    end
end
