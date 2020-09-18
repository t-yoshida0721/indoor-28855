class MessagesController < ApplicationController
  
  def create
    @indoor = Indoor.find(params[:indoor_id])
    @message = Message.create(message_params)
    # redirect_to "/indoors/#{@message.indoor.id}"
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message, nickname: @message.user.nickname
    else
      render  'indoors/show'
    end
  end

  private
  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id, indoor_id: params[:indoor_id])
  end
end