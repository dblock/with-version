With::Version
==========

[![Gem Version](http://img.shields.io/gem/v/with-version.svg)](http://badge.fury.io/rb/with-version)
[![Build Status](http://img.shields.io/travis/dblock/with-version.svg)](https://travis-ci.org/dblock/with-version)

Syntax sugar for version checks. Inspired by [usage in hashie](https://github.com/hashie/hashie/search?q=with_minimum_ruby&unscoped_q=with_minimum_ruby).

## Usage

### Ruby::Version

Use `with_minimum_ruby` to check against a Ruby version at class load time, instead of runtime.

```ruby
require 'with-version'

class Example
  include With::Version::Ruby

  with_minimum_ruby '2.4.0' do
    # only declared with Ruby 2.4.0 or newer
    def dig(*keys)
      puts "Digging #{keys.join(', ')} ..."
    end
  end
end
```

```ruby 
# Ruby 2.3.0
undefined method `dig' for #<Example:0x00007fca9388a8a0> (NoMethodError)
```

```ruby
# Ruby 2.4.0
Digging x, y ...
```

## Contributing

You're encouraged to contribute to this gem. See [CONTRIBUTING](CONTRIBUTING.md) for details.

## Copyright and License

Copyright (c) 2020, Daniel Doubrovkine and [Contributors](CHANGELOG.md).

This project is licensed under the [MIT License](LICENSE.md).
