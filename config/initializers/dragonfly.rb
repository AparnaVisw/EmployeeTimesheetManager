# file upload configuration for profile picture upload using dragonfly
require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret 'bc1a73ab514a44eea7ce442dfa35028461d23f1e8dd7bf62006e5fbc99b15625'

  url_format '/media/:job/:name'

  datastore :file,
            root_path: Rails.root.join('public/system/dragonfly', Rails.env),
            server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
