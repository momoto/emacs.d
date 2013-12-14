# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
OpendataCharter::Application.config.secret_key_base = '34df3d96c1fac1f36b223a100ac08fdfc0350f88814c481e2ec73adb8845990fb5d680907f90707f2a23c37e2e5a12bc48174b80104a025adc3873514d865491'
OpendataCharter::Application.config.secret_token = ENV['SECRET_TOKEN']
