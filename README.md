# ViewModels

Rails compatible view models ignoring persistence.
Just a wrapper around the gems 'virtus' and 'activemodel'.

https://github.com/solnic/virtus
https://github.com/rails/rails/tree/master/activemodel

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'view_model'
```

And then execute:

    $ bundle

## Usage

```ruby
class Profile < ViewModel::Base
  attribute :name, String
  validates :name, :presence => true
end
  
vm = Profile.new({:name => 'Bob'})

vm.valid? # => true
vm.attributes # => {:name => 'Bob'}
```
