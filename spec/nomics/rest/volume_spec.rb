# frozen_string_literal: true

require 'helper'
require_relative 'api_shared_examples'

# Examples provided by Nomics docs
# Volume History
# curl "https://api.nomics.com/v1/volume/history?key=your-key-here&start=2018-04-14T00%3A00%3A00Z&end=2018-05-14T00%3A00%3A00Z&convert=EUR"

RSpec.describe Nomics::Rest::Currencies do
  # [method, path, options]
  endpoints = [
    [
      'volume_history', '/volume/history', {
        key: 'AK',
        start: '2018-04-14T00%3A00%3A00Z',
        end: '2018-05-14T00%3A00%3A00Z',
        convert: 'EUR'
      }
    ]
  ]

  include_examples('mapped endpoints for Nomics API', endpoints)
end
