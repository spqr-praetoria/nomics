# frozen_string_literal: true

module Nomics
  module Rest
    # Currency endpoints
    module Currencies
      def currencies_ticker(options = {})
        get('/currencies/ticker', options)
      end

      def currencies_metadata(options = {})
        get('/currencies', options)
      end
    end
  end
end
