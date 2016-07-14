#! env ruby

require './lib/blinky'

light = Blinky.new.light 

light.warning!

light.watch_cctray_server 'https://circleci.com/cc.xml?circle-token='
