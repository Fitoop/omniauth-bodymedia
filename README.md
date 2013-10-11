# OmniAuth BodyMedia Strategy

This gem is an OmniAuth 1.0+ Strategy for the [BodyMedia API](https://developer.bodymedia.com/docs).

## Usage

Add the strategy to your `Gemfile`:

```ruby
gem 'omniauth-bodymedia'
```

Then integrate the strategy into your middleware:

```ruby
use OmniAuth::Builder do
  provider :bodymedia, 'consumer_key', 'consumer_secret'
end
```

In Rails, create a new file under config/initializers called omniauth.rb to plug the strategy into your middleware stack.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bodymedia, 'consumer_key', 'consumer_secret'
end

```

## BodyMedia API Credentials and other info

To register your application with BodyMedia and obtain a consumer key and secret, go to the [BodyMedia application registration](https://developer.bodymedia.com/member/register).

For additional information about OmniAuth, visit [OmniAuth wiki](https://github.com/intridea/omniauth/wiki).

For a short tutorial on how to use OmniAuth in your Rails application, visit [this tutsplus.com tutorial](http://net.tutsplus.com/tutorials/ruby/how-to-use-omniauth-to-authenticate-your-users/).


## Copyright

Copyright (c) 2013 Michael Murray / Fitoop. 
