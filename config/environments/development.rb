Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end
  config.active_storage.service = :local
  config.action_mailer.raise_delivery_errors = true
  config.after_initialize do
    Bullet.enable = true
    Bullet.bullet_logger = true
    Bullet.rails_logger = true
  end
  config.action_mailer.delivery_method = :file
  config.action_mailer.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
  config.assets.debug = true
  config.assets.quiet = true
  config.action_view.raise_on_missing_translations = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.action_mailer.default_url_options = { host: "localhost:3000" }

  # Setup for Mailcatcher, if present
  if `which mailcatcher`.length > 0
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = { address: "localhost", port: 1025 }
  end

  # Specify locations for mails previews
  config.action_mailer.preview_path = "spec/mailers/previews"

  # Use email template for emails except on devise mails sent for admin users
  config.to_prepare do
    ActionMailer::Base.layout proc { |mailer|
      if mailer.is_a?(Devise::Mailer) && mailer.scope_name == :admin_user
        nil
      else
        "email"
      end
    }
  end

  config.action_mailer.asset_host = "http://localhost:3000"
end
