require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Userfacts
  class Application < Rails::Application

    Librato.measure 'user_fact_table.count', UserFact.count
    Librato.measure 'likes_table.count', Like.count
    Librato.measure 'links_table.count', Link.count
    Librato.measure 'post_table.count', Post.count
    Librato.measure 'friends_table.count', Friend.count

    Librato.measure 'games_table.count', Game.count
    Librato.measure 'books_table.count', Book.count

    Librato.measure 'movies_table.count', Movie.count
    Librato.measure 'music_table.count', Music.count
    Librato.measure 'television_table.count', Television.count

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
