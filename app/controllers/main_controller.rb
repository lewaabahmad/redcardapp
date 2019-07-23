class MainController < ApplicationController

  def home
    @message = Message.new(type: 'TextMessage')
  end
  
end
