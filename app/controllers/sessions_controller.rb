class SessionsController < ApplicationController

    def create
       # binding.pry
        @user = User.find_by(:name => user_params[:name])
        
        if !@user.authenticate(user_params[:password])
         
            return head(:forbidden)
        end
      #  binding.pry
        session[:user_id] = @user.id
      
    end



end