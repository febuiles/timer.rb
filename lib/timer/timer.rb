module Timer
  class Timer
    SAY_COMMAND = "say"
    def initialize(duration, msg="it's hammertime, you're done.")
      sleep(duration)
      system(SAY_COMMAND, msg)
    end
  end
end
