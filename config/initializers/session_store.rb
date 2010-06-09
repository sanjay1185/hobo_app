# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hobo_app_session',
  :secret      => '0d36a78951fdade27db80b1effdac538f4f86f6217f3e07cd20741e6428c86cc0e9b3182251771c999cfbc6a5c090ee7c8f275e03c7d7c71e38f7786b9fbea53'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
