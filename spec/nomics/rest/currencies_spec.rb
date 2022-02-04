# frozen_string_literal: true

require 'helper'
require_relative 'api_shared_examples'

# Examples provided by Nomics docs
# Currencies Ticker
# curl "https://api.nomics.com/v1/currencies/ticker?key=your-key-here&ids=BTC,ETH,XRP&interval=1d,30d&convert=EUR&platform-currency=ETH&per-page=100&page=1"

# Currencies Metadata
# curl "https://api.nomics.com/v1/currencies?key=your-key-here&ids=BTC,ETH,XRP&attributes=id,name,logo_url"

RSpec.describe Nomics::Rest::Currencies do
  # [method, path, options]
  endpoints = [
    [
      'currencies_ticker', '/currencies/ticker', {
        key: 'AK',
        ids: 'BTC,ETH,XRP',
        interval: '1d,30d',
        convert: 'EUR',
        "platform-currency": 'ETH',
        "per-page": 100,
        page: 1
      }
    ],
    [
      'currencies_metadata', '/currencies', {
        key: 'AK',
        ids: 'BTC,ETH,XRP',
        attributes: 'id,name,logo_url'
      }
    ]
  ]

  include_examples('mapped endpoints for Nomics API', endpoints)
end
