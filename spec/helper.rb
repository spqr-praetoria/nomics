# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require 'nomics'
require 'rspec'
require 'webmock/rspec'

BASE_URL = 'https://api.nomics.com/v1'

def stub_get(path)
  stub_request(:get, BASE_URL + path)
end

def a_get(path)
  a_request(:get, BASE_URL + path)
end
