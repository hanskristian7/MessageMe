class ChatroomController < ApplicationController
    before_action :require_user
    
    def index
        @messages = Message.all
    end
end

# private
# def set_message

# end
