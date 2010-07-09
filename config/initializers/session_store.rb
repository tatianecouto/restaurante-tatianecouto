# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurante_session',
  :secret      => '83b1bf6603a8f291ae174f0615e1f5173945ed91a83b58fddbd0bb8d07c4b182328bc5049ef327ec91b6f316db8a53a7d6a9b448ad90093f8aca0691004d31c2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
