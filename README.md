[github]: https://github.com/neopoly/view_model
[doc]: http://rubydoc.info/github/neopoly/view_model/master/file/README.md
[gem]: https://rubygems.org/gems/view_model
[travis]: https://travis-ci.org/neopoly/view_model
[travis-badge]: https://img.shields.io/travis/neopoly/view_model.svg?branch=master
[codeclimate]: https://codeclimate.com/github/neopoly/view_model
[codeclimate-climate-badge]: https://img.shields.io/codeclimate/github/neopoly/view_model.svg
[codeclimate-coverage-badge]: https://codeclimate.com/github/neopoly/view_model/badges/view_model.svg
[inchpages]: https://inch-ci.org/github/neopoly/view_model

# ViewModel

[![Travis][travis-badge]][travis]
[![Gem Version](https://img.shields.io/gem/v/view_model.svg)][gem]
[![Code Climate][codeclimate-climate-badge]][codeclimate]
[![Test Coverage][codeclimate-coverage-badge]][codeclimate]
[![Inline docs](https://inch-ci.org/github/neopoly/view_model.svg?branch=master&style=flat)][inchpages]

[Gem][gem] |
[Source][github] |
[Documentation][doc]

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
