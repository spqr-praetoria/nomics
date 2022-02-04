# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'nomics/error'

module Nomics
  # Handles the request and response for all endpoints
  module Request
    def get(path, options = {})
      @path = path
      @options = options
      perform_get_request
    end

    private

    def perform_get_request
      response = http.request(request)
      response_body = response.read_body ? JSON.parse(response.read_body) : ''

      { code: response.code, data: response_body }
    rescue StandardError
      error_response(response.code, response.read_body)
    end

    def url
      URI(@base_url + @path + query_params)
    end

    def query_params
      "?key=#{api_key}&#{URI.encode_www_form(@options)}"
    end

    def http
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      http
    end

    def request
      Net::HTTP::Get.new(url)
    end

    def error(code)
      klass = Nomics::Error::ERRORS[code.to_i]
      klass || Nomics::Error
    end

    def error_response(code, message)
      { code: code, type: error(code).to_s, data: message }
    end
  end
end
