# frozen_string_literal: true

require 'nomics/rest/currencies'
require 'nomics/rest/markets'
require 'nomics/rest/volume'

module Nomics
  module Rest
    module Api
      include Nomics::Rest::Currencies
      include Nomics::Rest::Markets
      include Nomics::Rest::Volume
    end
  end
end
