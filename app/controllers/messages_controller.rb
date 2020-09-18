class MessagesController < ApplicationController
  
  def create
    @message = Message.create(message_params)
    redirect_to "/indoors/#{@message.indoor.id}"
  end

  private
  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, indoor_id: params[:indoor_id])
  end
end