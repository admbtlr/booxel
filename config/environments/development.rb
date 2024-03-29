Booxel::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  config.assets.debug = true

  # Automatically inject JavaScript needed for LiveReload
  config.middleware.insert_after(ActionDispatch::Static, Rack::LiveReload)

  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:        'mail.messagingengine.com',
    port:           587,
    authentication: 'plain',
    user_name:      'adamvert@fastmail.fm',
    password:       '04tpw/R4w1t',
    enable_starttls_auto: true
  }

  config.epub_path = '/Users/adam/Sites/me/rails/booxel/app/assets/ebooks/'

end