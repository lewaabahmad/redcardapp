account_sid = ENV['TWILIO_SID']
auth_token = ENV['TWILIO_TOKEN']
$twilio_client = Twilio::REST::Client.new(account_sid, auth_token)