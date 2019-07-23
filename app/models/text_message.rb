class TextMessage < Message

  before_create :send_message

  def send_message
    $twilio_client.messages.create(
      from: ENV['TWILIO_NUMBER'],
      to: recipient,
      body: "Hey friend!"
      )
  end

  def message_body
    "Please go here to know your rights: #{ENV['HOST_URL: http://localhost:3000/card']}"
  end
  
end
