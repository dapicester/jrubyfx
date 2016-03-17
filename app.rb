require 'sinatra/base'

class App < Sinatra::Base
  configure do
    set :server, :puma
  end

  get '/' do
    '<h1>Hello world!</h1>'
  end
end
