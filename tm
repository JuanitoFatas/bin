#!/usr/bin/env ruby

# Exit cleanly from an early interrupt
Signal.trap("INT") { abort }

# Usage
#
# NAME
#       tm - time management
#
# Opens today's time log, create if not exists.
#
# $ tm

require "pathname"
require "fileutils"

today = Time.now.strftime("%Y-%m-%d")
file = Pathname.new "#{Dir.home}/Documents/time/#{today}.md"

FileUtils.touch(file) unless file.exist?
`subl -w #{file}`
