# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_losttweets_session',
  :secret      => 'f0f8b090334ddd56724511a977c49793834c6ef88569d43dd248872620405cd176b49412eb92f6db6f9374b60619cefb53a6c6a789ce59e4c1f77fc7266b6992'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
