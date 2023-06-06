# frozen_string_literal: true

require 'rack/unreloader'
require 'sinatra'

Unreloader = Rack::Unreloader.new { App }
Unreloader.require './app.rb'

run Unreloader
