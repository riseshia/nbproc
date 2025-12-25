> Ruby 4.0 introduce Ractor.shareable_proc, so we don't need this anymore!

# nbproc

Expose ruby internal C API which create proc with **n**o **b**inding.
This gem aims to let user access easier to Ractor,
since normal proc isn't shareable.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add nbproc

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install nbproc

## Usage

```ruby
some_proc = proc { 1 }.isolate
some_proc = nbproc { 1 } # which is syntax sugar of above.

Ractor.shareable?(some_proc) # => true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/riseshia/nbproc.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
