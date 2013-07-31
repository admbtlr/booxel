source 'https://rubygems.org'

ruby "2.0.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# gem 'sqlite3'
gem 'pg'
# gem 'taps'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '~> 2.3.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

gem 'bootstrap-sass'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

gem 'gepub'

gem 'redcarpet'

gem 'kindlegen'

# live reload of compiled sass - http://blog.55minutes.com/2013/01/lightning-fast-sass-reloading-in-rails-32/
group :development do
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rb-fsevent',       require: false
end

group :test do
  gem 'factory_girl_rails'
end

# Required by Heroku
group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

gem 'delayed_job_active_record', '~> 4.0.0'


# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
