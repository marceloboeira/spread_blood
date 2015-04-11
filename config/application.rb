require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module SpreadBlood
  class Application < Rails::Application
    VERSION = "0.0.0"

    config.autoload_paths << "#{Rails.root}/app/models/enumerations/"
    config.autoload_paths << "#{Rails.root}/lib/validators/"
    config.time_zone = "Brasilia"
    config.i18n.default_locale = config.i18n.locale = ENV["SB_LOCALE"] || :"pt-BR"
    config.assets.paths << Rails.root.join("app", "assets")
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: true,
        routing_specs: false,
        controller_specs: false,
        request_specs: true
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end

    if Rails.env.production?
      config.action_mailer.default_url_options = { host: ENV["SB_HOST"] }
      config.action_mailer.delivery_method = :smtp
      config.action_mailer.smtp_settings = {
        address: ENV["SB_MAIL_SERVER"],
        port: ENV["SB_MAIL_PORT"],
        enable_starttls_auto: ENV["SB_MAIL_TTLS"],
        user_name: ENV["SB_MAIL_USERNAME"],
        password: ENV["SB_MAIL_PASSWORD"],
        authentication: ENV["SB_MAIL_AUTH"],
        domain: ENV["SB_MAIL_DOMAIN"]
      }
    end
  end
end
