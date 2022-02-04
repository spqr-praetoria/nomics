# frozen_string_literal: true

module Nomics
  module Rest
    # Market endpoints
    module Markets
      def markets(options = {})
        get('/markets', options)
      end

      def market_cap_history(options = {})
        get('/market-cap/history', options)
      end
    end
  end
end
