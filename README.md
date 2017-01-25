# Trailblazer::Rails

## Railtie


This will go through `app/concepts/`, find all the `crud.rb` files, autoload their corresponding namespace (e.g. `Thing`, which is a model) and then load the `crud.rb` file.

## Form::model_name

Automatically sets `model` on operation's contract when `Operation::Model` is included in operation.


## Planned

* Adds autoloading, etc.
* Automatic rendering of a controller cell instead of primitive view.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trailblazer-rails'
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

