require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module RHappieCards
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.generators do |g|
      g.test_framework :rspec, :views => false, :fixture => true
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    # Configure vendor paths
    config.assets.paths << Rails.root.join('vendor', 'Skeleton')

    # Individual files to include for polyfills/shims
    #config.assets.precompile += %w( file.blah )

    # Configure default generators
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework  :rspec, fixture_replacement: :factory_girl
    end

    # As of Devise 2.2.0 we need to explicitly configure it to respond to JSON
    config.to_prepare do
      DeviseController.respond_to :html, :json
    end

    config.paperclip_local_config =  {
        url: '/system/:class/:id_:basename_:style',
        path: ':rails_root/public/system/:class/:id_:basename_:style',
        use_timestamp: false,
    }

    config.paperclip_rackspace_config = {
        url: ':id_:basename_:style',
        path: ':id_:basename_:style',
        storage: :fog,
        use_timestamp: false,
        fog_credentials: {
            provider: 'Rackspace',
            rackspace_api_key: 'some key',
            rackspace_username: 'some username'
        },
        fog_directory: 'some container name',
        fog_public: true,
        fog_host: 'some host'
    }
  end
end
