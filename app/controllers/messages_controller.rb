class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  
  def show
    @message = Message.find(params[:id])
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success]='Messageが正常に投稿されました'
      redirect_to @message
    else
      flash.now[:danger]='Messageが投稿されませんでした'
      render :new
    end
  end
  
  def new
    @message = Message.new
  end
  
  def update
    @message = Message.find(params[:id])
    if @message.save
      flash[:success]='Messageを正常に更新しました'
      redirect_to @message
    else
      flash.now[:danger]="Messageを更新できませんでした"
      render :edit
    end
  end
  
  def edit
    @message = Message.find(params[:id])
  end
  
  def destroy
    @message =Message.find(params[:id])
    @message.destroy
    
    flash[:success]='Messageは正常に削除されました'
    redirect_to message_url
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
