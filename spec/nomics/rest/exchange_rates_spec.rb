# frozen_string_literal: true

require 'helper'
require_relative 'api_shared_examples'

# Examples provided by Nomics docs
# Exchange Rates
# curl "https://api.nomics.com/v1/exchange-rates?key=your-key-here"

# Exchange Rates History
# curl "https://api.nomics.com/v1/exchange-rates/history?key=your-key-here&currency=BTC&start=2018-04-14T00%3A00%3A00Z&end=2018-05-14T00%3A00%3A00Z"

RSpec.describe Nomics::Rest::Currencies do
  # [method, path, options]
  endpoints = [
    [
      'exchange_rates', '/exchange-rates', {
        key: 'AK'
      }
    ],
    [
      'exchange_rates_history', '/exchange-rates/history', {
        key: 'AK',
        currency: 'BTC',
        start: '2018-04-14T00%3A00%3A00Z',
        end: '2018-05-14T00%3A00%3A00Z'
      }
    ]
  ]

  include_examples('mapped endpoints for Nomics API', endpoints)
end
