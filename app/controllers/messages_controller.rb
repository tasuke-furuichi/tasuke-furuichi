class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  
  def show
    @message = Message.find(params[:id])
  end
  
  def create
  end
  
  def new
  end
  
  def update
  end
  
  def edit
  end
  
  def destroy
  end
  
end
