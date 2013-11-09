# Rails::Pseudoloc

Provides automated pseudolocalization to Ruby on Rails applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-pseudoloc'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install rails-pseudoloc
```

## Usage


### Rails 4

Create an initializer under `config/initializers` that looks like this:

```ruby
if ENV['PSEUDOLOC']
  require 'rails/pseudoloc'

  I18n.backend = Rails::Pseudoloc::Backend.new(I18n.backend)
end
```

And then restart the Rails application.

## Limitations

The gem currently does not pseudolocalize everything. Specifically it does not pseudolocalize anything that goes through the `I18n#localize` method or `l` helper. It also does not currently pseudolocalize strings consisting entirely of capital letters because I haven't gotten around to expanding out the translation table to include capital letters yet.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
