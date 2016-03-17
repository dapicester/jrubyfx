#!/usr/bin/env jruby

require_relative '../javafx'
require_relative '../app'

app = Thread.new { App.run! }

sleep 2
HelloJRubyFX.launch
