# Nomics

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/nomics`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nomics'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nomics

## Configuration
Configure Nomics with your API-Key and the URL

```ruby
@nomics_api_client = Nomics::Client.new do |config|
  config.api_key = 'YOUR_API_KEY'
  config.base_url = 'https://api.nomics.com/v1'
end
```

## Usage

For available options please hop over to the Nomics API docs here [https://nomics.com/docs](https://nomics.com/docs)

***Available endpoints***
Currencies
```ruby
@nomics_api_client.currencies_ticker(options_hash)
@nomics_api_client.currencies_metadata(options_hash)
```

Markets
```ruby
@nomics_api_client.markets(options_hash)
@nomics_api_client.market_cap_history(options_hash)
```

Volume
```ruby
@nomics_api_client.volume(options_hash)
```

Exchange rates
```ruby
@nomics_api_client.exchange_rates(options_hash)
@nomics_api_client.exchange_rates_history(options_hash)
```

## Response structure

The response will always return a hashed response containing the response code and data
```ruby
{ code: "200", data: [...] }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nomics. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/nomics/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nomics project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nomics/blob/master/CODE_OF_CONDUCT.md).
