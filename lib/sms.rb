module SMS
  def self.text(message, mobile)
	auth = "#{ENV['TWILIO_ID']}:#{ENV['TWILIO_SECRET']}"
	method = "/2010-04-01/Accounts/#{ENV['TWILIO_ID']}/SMS/Messages"
	uri = "https://#{auth}@api.twilio.com#{method}"
	data = "From=+#{ENV['TWILIO_PHONE']}&To=+#{mobile}&Body=+#{message}"
	`curl "#{uri}" --data "#{data}" --silent`
  end
end

