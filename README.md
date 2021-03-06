# sms

Send text messages with [Twilio](http://www.twilio.com/). Easily.

## Installation

	gem install sms

Or put `gem 'sms'` in your `Gemfile`.


## Usage

Set the following ENV variables:

* `TWILIO_ID`: Your Twilio API id token.
* `TWILIO_SECRET`: Your Twilio API secret token.
* `TWILIO_PHONE`: One of your Twilio phone numbers.

Then, send some SMS messages:

    SMS.text :message => "Hello!", :to => "15558675309"

Calling `SMS.text` returns true if the message was sent, or false if it wasn’t.


## Testing
To run the test suite, put a YAML file with the following keys at `~/.twilio`:

* `sid`: Your Twilio API ID token.
* `secret`: Your Twilio API secret token.
* `from`: Twilio phone number to send test message from.
* `to`: Phone number to send test message to.

This is a bit of a hack. Unfortunately, Twilio doesn’t offer testing credentials.


## Credits
* This is a heavily–modified fork of [sms-rb](https://github.com/nakajima/sms-rb).


## TODO
* Consolidate YAML/ENV/options – should be able to set all from any method.
* Support loading config directly from arbitrary YAML files.

