$: << File.join(File.dirname(__FILE__), '..', 'lib')
require 'omniauth/strategies/bodymedia'
require 'sinatra'

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :bodymedia, 5msu9fsadkuq24tue24en997ynn8wam6, Yp24V8GFS6H8EBU94rumSUBNC325Q7yADHAxASsTTrZ78nPN2NZqGYNbQyVRKWnT
end

get '/' do
  <<-HTML
  <h1>BodyMedia OmniAuth Test App</h1>
  <a href='/auth/bodymedia'>Sing in with BodyMedia</a>
  HTML
end

get '/auth/:name/callback' do
  "Done"
end

