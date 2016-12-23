# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

#KateApp::Application.config.secret_key_base = '639af6b5f4fb03c3f7ead6b0362bafc3825cbab066ffd24c592ff4dfa28dcc4291fc2aa35fde5389e1174012c54ce8f34344e439bb4e05b784a687f1e8569e9d'
require 'securerandom'

def secure_token # Динамическая генерация секретного токена. 
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token.
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token_file.
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

KateApp::Application.config.secret_key_base = secure_token