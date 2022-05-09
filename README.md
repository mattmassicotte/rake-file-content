# rake-file-content

By default, rake's `file` tasks determine dependencies and requirements by file modification date. This gem makes it possible to compute requirements by file contents. It's a little slower in the best case, but avoids many correctness pitfalls that a date-only implementation suffers from.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake-file-content'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rake-file-content

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rake-file-content. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rake-file-content/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the rake-file-content project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rake-file-content/blob/main/CODE_OF_CONDUCT.md).
