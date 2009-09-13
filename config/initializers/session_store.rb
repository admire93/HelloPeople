# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hello-people_session',
  :secret      => '0bf7c3d92c8421448b445fee0a15aaa746485d4bf255200589113e3d778d95683cdb560626e8e6b72f86f8d27bc790baf89f4da3f203c3628a13210e60bd8eef'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
