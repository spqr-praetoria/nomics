# frozen_string_literal: true

require 'helper'
require_relative 'api_shared_examples'

# Examples provided by Nomics docs
# Markets
# curl "https://api.nomics.com/v1/markets?key=your-key-here&exchange=binance&base=BTC,ETH,LTC,XMR&quote=BTC,ETH,BNB"

# Market Cap History
# curl "https://api.nomics.com/v1/market-cap/history?key=your-key-here&start=2018-04-14T00%3A00%3A00Z&end=2018-05-14T00%3A00%3A00Z"

RSpec.describe Nomics::Rest::Currencies do
  # [method, path, options]
  endpoints = [
    [
      'markets', '/markets', {
        key: 'AK',
        exchange: 'binance',
        base: 'BTC,ETH,LTC',
        quote: 'BTC,ETH,BNB'
      }
    ],
    [
      'market_cap_history', '/market-cap/history', {
        key: 'AK',
        start: '2018-04-14T00%3A00%3A00Z',
        end: '2018-05-14T00%3A00%3A00Z'
      }
    ]
  ]

  include_examples('mapped endpoints for Nomics API', endpoints)
end
