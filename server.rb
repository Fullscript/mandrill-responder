require 'rubygems'
require 'sinatra'
require 'resque'
require 'redis'
require './mandrill_callbacks'

# set REDIS_URL as per the docs
Resque.redis = Redis.new

get '/' do
  "I only listen to POST"
end

post '/' do
  Resque.enqueue(MandrillCallbacks, params)

  status 200
  body ''
end