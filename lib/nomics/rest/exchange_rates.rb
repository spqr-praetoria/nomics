# frozen_string_literal: true

module Nomics
  module Rest
    # Exchange rate endpoints
    module ExchangeRates
      def exchange_rates(options = {})
        get('/exchange-rates', options)
      end

      def exchange_rates_history(options = {})
        get('/exchange-rates/history', options)
      end
    end
  end
end
