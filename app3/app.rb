require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8000

get '/' do
  'Hello World from Ruby! SIR'
end

get '/info' do
  "Running on Ruby #{RUBY_VERSION} at #{Time.now}"
end