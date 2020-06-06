class SessionController < ApplicationController
    def new
        
    end

    def show
        @user = User.find_by(params[:id])
    end

    def create
        
    end
end
