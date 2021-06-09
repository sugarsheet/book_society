# frozen_string_literal: true

ActsAsFavoritor.configure do |config|
  # Specify your default scope. Learn more about scopes here: https://github.com/jonhue/acts_as_favoritor#scopes
  # config.default_scope = :favorite
  config.default_scope = :follow

  # Enable caching. Learn more about caching here: https://github.com/jonhue/acts_as_favoritor#caching
  # config.cache = false
end
