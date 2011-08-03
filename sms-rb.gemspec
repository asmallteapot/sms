# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sms-rb}
  s.version = '0.0.4'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Bill Williams', 'Pat Nakajima']
  s.date = %q{2011-08-02}
  s.executables = ['sms']
  s.email = %q{bill@flpatriot.com}
  s.files = ['README.md', 'lib/sms.rb',]
  s.require_paths = ['lib']
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Send text messages with Twilio.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
