# frozen_string_literal: true

# The App class represents a Sinatra application for handling HTTP requests and serving web pages.
class App < Sinatra::Base
  get '/' do
    content_type :json
    { message: 'Hello World!' }.to_json
  end
end
