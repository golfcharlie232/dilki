# Dilki

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dilki`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dilki'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dilki

## Usage

Translate text with yandex translate api service
=======
First, create translator using your api key:

  Dilki::Client.new('your api key')

To get list of possible translation directions use #langs method:

  Clientlangs

To determine language text use detect method:

  Client.detect("text")

To translate text use translate method:

  Client.translate 'First', from: 'ru'

In this case Yandex automatically detect text language. If you want to set text language manually add third parameter

  Client.translate 'Text to translate', from: 'ru', to: 'en'

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/golfcharlie232/dilki. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
