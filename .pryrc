def pbcopy(input)
  IO.popen('pbcopy', 'w') { |f| f << input.to_s }
  STDOUT.puts "Copied to clipboard!"
end

require 'objspace'
def s(obj)
  ObjectSpace.memsize_of(obj)
end

module Monotonic
  def self.now
    Process.clock_gettime Process::CLOCK_MONOTONIC
  end
end

def time
  s = Monotonic.now
  yield
  puts Monotonic.now - s
end
