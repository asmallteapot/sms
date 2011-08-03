require 'uri'
require 'net/https'

module SMS
  attr_accessor :sid, :secret, :from
  
  def self.text(options={})
    @sid = ENV.delete('TWILIO_ID') if ENV.key?('TWILIO_ID')
    @secret = ENV.delete('TWILIO_SECRET') if ENV.key?('TWILIO_SECRET')
    @from = ENV.delete('TWILIO_PHONE') if ENV.key?('TWILIO_PHONE')
	@from = options[:from] if options.key?(:from)
	return false if @from.nil? or @from == ''
	return false unless options.key?(:message)
	return false unless options.key?(:to)
    
    url = URI.parse "https://api.twilio.com/2010-04-01/Accounts/#{@sid}/SMS/Messages"
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
        
    request = Net::HTTP::Post.new(url.path)
	request.basic_auth @sid, @secret
    request.set_form_data({
	  'From' => @from,
	  'To' => options[:to],
	  'Body' => options[:message],
	})
    
    response = http.start do |http|
      http.request(request)
    end
  end
end

