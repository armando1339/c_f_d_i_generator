[![Build Status](https://travis-ci.org/armando1339/c_f_d_i_generator.svg?branch=master)](https://travis-ci.org/armando1339/c_f_d_i_generator) [![Coverage Status](https://coveralls.io/repos/github/armando1339/c_f_d_i_generator/badge.svg?branch=master)](https://coveralls.io/github/armando1339/c_f_d_i_generator?branch=master)


# CFDIGenerator

Generate XML (CFDI) files for Mexico`s invoices
(this library is under construction, its use is not recommended yet).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'c_f_d_i_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install c_f_d_i_generator

## Usage

```ruby
# instantiate object
cfdi = CFDIGenerator::Voucher.new(data)

cfdi.build_xml

```

## Credits 

- [Armando Alejandre](http://armando-alejandre.herokuapp.com/)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

