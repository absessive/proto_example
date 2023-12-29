# frozen_string_literal: true

require 'rest-client'
require 'google/protobuf'
require_relative 'proto/user_pb'

user = User.new(id: 1, name: 'John', email: 'john@example.com')
serialized_user = User.encode(user)

response = RestClient.post('http://localhost:4321/user', serialized_user, { content_type: 'application/octet-stream' })
puts response.body
