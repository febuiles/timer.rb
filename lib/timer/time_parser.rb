module Timer
  module TimeParser
    def self.parse_duration(duration)
      return nil if duration.nil?

      total = 0
      hours = []
      mins = []
      secs = []

      time_chunks = duration.split(" ")
      time_chunks.reject! { |c| c !~ /\d+[mhs]$/ }
      hours += time_chunks.select {|c| c[-1,1] == "h" }
      mins += time_chunks.select {|c| c[-1,1] == "m" }
      secs += time_chunks.select {|c| c[-1,1] == "s" }

      total += hours.inject(0) { |sum, x| sum + (x.to_i * 3600) }
      total += mins.inject(0) { |sum, x| sum + (x.to_i * 60) }
      total += secs.inject(0) { |sum, x| sum + x.to_i }

      total unless total == 0
    end
  end
end


