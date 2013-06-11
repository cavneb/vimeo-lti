require File.join(File.dirname(__FILE__), '..', 'vimeo_lti.rb')

require 'sinatra'
require 'rack/test'

# setup test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  VimeoLti
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end