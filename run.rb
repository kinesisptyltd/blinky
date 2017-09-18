#! env ruby

require "#{File.dirname(__FILE__)}/lib/blinky"
require 'dotenv/load'

server = 'https://gocd.aws.kinesis.org:8154/go/cctray.xml'
credentials = {
  user: ENV["GOCD_LIGHT_USER"],
  password: ENV["GOCD_LIGHT_PASSWORD"]
}

while true do
  begin
    light = Blinky.new.light
    light.warning!
    light.watch_cctray_server server, credentials
  rescue => e
    puts e.inspect
  end
end
