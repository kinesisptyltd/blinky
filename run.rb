#! env ruby

require "#{File.dirname(__FILE__)}/lib/blinky"


while true do

  begin
    light = Blinky.new.light 
    light.warning!
    light.watch_cctray_server 'https://circleci.com/cc.xml?circle-token='
  rescue => e
    puts e.inspect
  end

end
