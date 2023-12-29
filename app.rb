# frozen_string_literal: true

require 'sinatra'
require 'google/protobuf'
require_relative 'proto/user_pb'

# Simple Sinatra app

post '/user' do
  request.body.rewind
  user_data = request.body.read
  user = User.decode(user_data)
  "Received user: #{user.name}, #{user.id}, #{user.email}"
end

run Sinatra::Application.run!
