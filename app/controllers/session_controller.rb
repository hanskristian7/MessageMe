class SessionController < ApplicationController
    def new
        
    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "Login Successfully!"
            redirect_to chatroom_path
        else
            flash.now[:error] =  "Login Failed!, Please Try Again."
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:success] = "Logged Out!"
        redirect_to root_path
    end
end
