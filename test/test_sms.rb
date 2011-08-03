require 'test/unit'
require 'sms'
require 'yaml'

class TestSms < Test::Unit::TestCase
  credentials = YAML::load(File.read(File.expand_path('~/.twilio')))
  ENV['TWILIO_ID'] = credentials['sid']
  ENV['TWILIO_SECRET'] = credentials['secret']
  FROM_NUMBER   = credentials['from']
  TO_NUMBER     = credentials['to']
  MESSAGE       = 'sms-rb test message'
  
  def test_successful_message
    assert SMS.text(:message => MESSAGE, :from => FROM_NUMBER, :to => TO_NUMBER)
  end
  
  def test_bad_from_number
    assert !SMS.text(:message => MESSAGE, :from => '5', :to => TO_NUMBER)
  end
  
  def test_bad_to_number
    assert !SMS.text(:message => MESSAGE, :from => FROM_NUMBER, :to => '5')
  end
end

