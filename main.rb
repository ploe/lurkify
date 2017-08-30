require 'sinatra'

set :bind, '0.0.0.0'
set :server, :puma

get '/' do
      'hello, world'
end
