# sms-rb

Send text messages with [Twilio](http://www.twilio.com/). Easily.


## USAGE

Set the following ENV variables:

* `TWILIO_ID` - Your Twilio API id token.
* `TWILIO_SECRET` - Your Twilio API secret token.
* `TWILIO_PHONE` - One of your Twilio phone numbers.

Then, send some SMS messages:

    SMS.text :message => "Hello!", :to => "15558675309"

Calling `SMS.text` returns true if the message was sent, or false if it wasn’t.

