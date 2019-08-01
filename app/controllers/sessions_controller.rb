class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by_name(params[:user][:name])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
        end
    end

    def destroy
        session.delete :user_id
        redirect_to new_session_path
    end
end
