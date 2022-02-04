# frozen_string_literal: true

require 'nomics/rest/currencies'
require 'nomics/rest/markets'

module Nomics
  module Rest
    module Api
      include Nomics::Rest::Currencies
      include Nomics::Rest::Markets
    end
  end
end
