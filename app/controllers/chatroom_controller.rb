class ChatroomController < ApplicationController
    def index
        @messages = Message.all
    end
end

private
def set_message

end
