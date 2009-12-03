# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_taobaoshop_session',
  :secret      => '502cba7e991f20322bfff9c5c7e24388bc9548d9ee629b4d43202754a9cdcdeec16c0a99003411d237cb240deba05e9873fdde52a27af395250062eea9dc4d38'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
