# frozen_string_literal: true

module Nomics
  # Main class that everything is routed through
  class Client
    attr_accessor :api_key, :base_url

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end

      yield(self) if block_given?
    end
  end
end
