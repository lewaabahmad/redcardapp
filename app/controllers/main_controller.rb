class MainController < ApplicationController

  def home
    @message = Message.new(type: 'TextMessage')
  end
  
  def home_es
    @message = Message.new(type: 'TextMessage')
    @language = "es"
    render :home
  end
end
