# ViewModels

Rails compatible view models.
For now just a wrapper around the gem 'reform' (see https://github.com/apotonick/reform).

`ViewModel::Base` simply inherits from `Reform::Form`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'view_model'
```

And then execute:

    $ bundle

## Usage

```ruby
BusinessModel = Class.new
ViewModel::Base.new(BusinessModel.new)
```
