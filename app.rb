# frozen_string_literal: true

require './config/environment'

class Plan < ActiveRecord::Base; end

# The App class represents a Sinatra application for handling HTTP requests and serving web pages.
class App < Sinatra::Base
  get '/' do
    content_type :json
    { message: 'Hello World!' }.to_json
  end

  get '/plans' do
    content_type :json
    Plan.all.to_json
  end
end
