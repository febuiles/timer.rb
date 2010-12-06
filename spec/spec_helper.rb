$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'rspec'
require 'timer'

def t(duration)
  Timer::TimeParser.parse_duration(duration)
end

