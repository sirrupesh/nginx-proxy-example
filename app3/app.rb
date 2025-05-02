require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8000

get '/ruby' do
  'Hello World from Ruby! SIR'
end

get '/ruby/info' do
  "Running on Ruby #{RUBY_VERSION} at #{Time.now}"
end