class TextMessage < Message

  before_create :send_message
  validate :not_sent_in_last_ten_minutes

  def send_message
    $twilio_client.messages.create(
      from: ENV['TWILIO_NUMBER'],
      to: recipient,
      body: message_body
      )
  end

  def not_sent_in_last_ten_minutes
    messages_to_recipient_sent_in_last_ten_mins = TextMessage.where(recipient: recipient, created_at: 10.minutes.ago..Time.now)
    # binding.pry
  end

  def message_body
    "Please go here to know your rights: #{ENV['HOST_URL']}/card"
  end
  
end
