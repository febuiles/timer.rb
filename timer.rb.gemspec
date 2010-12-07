$LOAD_PATH.unshift 'lib'
require 'timer/version'

Gem::Specification.new do |s|
  s.name              = "timer.rb"
  s.version           = Timer::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Command-line timer"
  s.homepage          = "http://github.com/febuiles/timer.rb"
  s.email             = "federico.builes@gmail.com"
  s.authors           = [ "Federico Builes" ]
  s.has_rdoc          = false

  s.files             = %w( README.markdown Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")

  s.add_development_dependency "rspec"

  s.executables       = %w( timer )
  s.description       = <<desc
Use:

    $ timer [duration]

As in:

    $ timer 2h
    $ timer 2m
    $ timer 2h 3m
    $ timer 0.5h

desc
end
