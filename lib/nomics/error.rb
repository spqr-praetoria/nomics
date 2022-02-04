# frozen_string_literal: true

module Nomics
  # List of possible error codes that could be returned
  class Error < StandardError
    attr_reader :code

    ClientError = Class.new(self)
    BadRequest = Class.new(ClientError)
    Unauthorized = Class.new(ClientError)
    Forbidden = Class.new(ClientError)
    NotFound = Class.new(ClientError)
    NotAcceptable = Class.new(ClientError)
    RequestEntityTooLarge = Class.new(ClientError)
    UnprocessableEntity = Class.new(ClientError)
    TooManyRequests = Class.new(ClientError)

    ServerError = Class.new(self)
    InternalServerError = Class.new(ServerError)
    BadGateway = Class.new(ServerError)
    ServiceUnavailable = Class.new(ServerError)
    GatewayTimeout = Class.new(ServerError)

    ERRORS = {
      400 => Nomics::Error::BadRequest,
      401 => Nomics::Error::Unauthorized,
      403 => Nomics::Error::Forbidden,
      404 => Nomics::Error::NotFound,
      406 => Nomics::Error::NotAcceptable,
      413 => Nomics::Error::RequestEntityTooLarge,
      422 => Nomics::Error::UnprocessableEntity,
      429 => Nomics::Error::TooManyRequests,
      500 => Nomics::Error::InternalServerError,
      502 => Nomics::Error::BadGateway,
      503 => Nomics::Error::ServiceUnavailable,
      504 => Nomics::Error::GatewayTimeout
    }.freeze
  end
end
