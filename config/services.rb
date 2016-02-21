require 'sinatra/base'

ServiceManager.define_service 'app' do |s|
  s.host = 'localhost'
  s.port = 4567
  s.start_cmd = -> { Sinatra.new {  get('/') { 'Hello world!' } } }
  s.loaded_cue = /loaded the stage/
end
