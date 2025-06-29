Rails.application.configure do
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
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
        # config/environments/development.rb
        # ... (manter o restante do arquivo) ...
        Rails.application.configure do
          # ... (manter as outras configurações) ...

          # Don't care if the mailer can't send.
          config.action_mailer.raise_delivery_errors = true
          config.action_mailer.perform_caching = false
          config.action_mailer.perform_deliveries = true

          # Configurações do Action Mailer para envio via SMTP (ex: Gmail)
          config.action_mailer.delivery_method = :smtp
          config.action_mailer.smtp_settings = {
            address:              'smtp.gmail.com', # Servidor SMTP (ex: 'smtp.sendgrid.net', 'smtp.mailgun.org')
            port:                 587,              # Porta SMTP (587 para TLS/STARTTLS, 465 para SSL)
            domain:               'gmail.com',      # Domínio do seu provedor SMTP (ex: 'sendgrid.com', 'mailgun.org')
            user_name:            ENV['SMTP_USERNAME'], # **Defina esta variável de ambiente (seu e-mail)**
            password:             ENV['SMTP_PASSWORD'], # **Defina esta variável de ambiente (sua senha de app/API Key)**
            authentication:       'plain',          # Tipo de autenticação (ex: 'plain', 'login', 'cram_md5')
            enable_starttls_auto: true             # Habilita STARTTLS para segurança
          }
          # OU, para testar emails localmente com MailCatcher (recomendado em dev):
          # config.action_mailer.delivery_method = :smtp
          # config.action_mailer.smtp_settings = { address: "localhost", port: 1025 }

          # ... (manter as outras configurações) ...
          
          # Enable URL options for Action Mailer to generate full URLs in emails
          config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
        end
        
