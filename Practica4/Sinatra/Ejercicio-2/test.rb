require_relative 'run'
require 'minitest/autorun'
require 'minitest/spec'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe 'my example server' do
  it 'should succeed' do
    get '/'
    last_response.status.must_equal 200
    last_response.must_be :ok?
    last_response.body.must_include "Mi numero es correcto"
  end
  it 'should fail' do
   	get '/'
    last_response.status.must_equal 404
    last_response.must_be :ok?
    last_response.body.must_include 
  end
end