class MainController < ApplicationController

  def home
    @message = Message.new(type: 'TextMessage')
  end
  
  def contact
    @contact = Contact.new
  end
end
