# sms-rb

Send text messages with [Twilio](http://www.twilio.com/). Easily.

WARNING: This is a hacky fork that shells out to `curl`. You probably shouldn’t 
use it right now.

## USAGE

Set the following ENV variables:

* `TWILIO_ID` - Your Twilio API id token.
* `TWILIO_SECRET` - Your Twilio API secret token.
* `TWILIO_PHONE` - One of your Twilio phone numbers.

Then send some texts!

    SMS.text "Hello!", "15558675309"

Calling `SMS.text` returns the XML response directly from Twilio.
