# Datr

Ruby implementation of some common data structures.

## Installation

Add this line to your application's Gemfile:

    gem 'datr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install datr

## Usage

```ruby
require 'datr'

s = Datr::Stack.new
s.push "hi"
s.top # => "hi"
s.empty? #=> false
s.size # => 1
s.pop # => "hi" 
s.size # => 0
s.empty? # => true

q = Datr::Queue.new
q.insert "hola"
q.first # => "hola"
q.empty? # => false
q.size # => 1
q.remove # => "hola"
q.size # => 0
q.empty? # => true
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
