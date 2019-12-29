# RailsWebCache

RailsParseHead is a simple Ruby/Rails library for manage Rails cache by Web UI (Redis, Memory, etc...)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_web_cache'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_web_cache

## Usage

Add this line to the file `config/routes.rb`
```ruby
  mount RailsWebCache::Engine => '/rails_web_cache' # You can customize the path (ex: '/cache')
```

Enjoy ! Go to `/rails_web_cache`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/BorisBresciani/rails_web_cache. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsParseHead project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/BorisBresciani/rails_web_cache/blob/master/CODE_OF_CONDUCT.md).
