# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_haushaltsbuch_session',
  :secret      => '1c0affae823de42aab2a34256a2305fc120efb41af27446ee6d25113daf4b1e2cdf06f26ca9110e3a401da3a048325519ae70018a2b07d8f8b74b2c3871d532f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
