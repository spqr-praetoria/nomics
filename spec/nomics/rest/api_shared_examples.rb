# frozen_string_literal: true

require 'helper'

RSpec.shared_examples 'mapped endpoints for Nomics API' do |endpoints|
  let(:client) { Nomics::Client.new(api_key: 'AK', base_url: BASE_URL) }

  endpoints.each do |method, path, options|
    before do
      stub_get(path).with(query: options).to_return(body: '{}')
    end

    it "Makes a request to #{path} with options: #{options}" do
      options ? client.send(method, options) : client.send(method)
      expect(a_get(path).with(query: options)).to have_been_made
    end
  end
end
