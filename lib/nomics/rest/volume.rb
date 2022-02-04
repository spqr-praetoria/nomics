# frozen_string_literal: true

module Nomics
  module Rest
    # Volume endpoint
    module Volume
      def volume_history(options = {})
        get('/volume/history', options)
      end
    end
  end
end
