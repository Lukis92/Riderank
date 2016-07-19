source 'https://rubygems.org'
ruby '2.3.0'

gem 'rails', '~> 5.0.0'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
#OWN GEMS#
gem 'annotate', '~> 2.7', '>= 2.7.1' # Annotate ActiveRecord models as a gem.
gem 'bootstrap-sass' # Bootstrap framework for rails
gem 'devise' # Easy authorization library.
gem 'simple_form' # REALLY Simple Form builder.
gem "slim-rails" #SLIM templating
gem 'pg' # postgreSQL database

group :development do
  gem 'better_errors' # Better error page for Rails and other Rack apps.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails_best_practices'  # A code metric tool for rails projects.
end

group :development, :test do
  gem 'byebug', platform: :mri
end

group :production do
  gem 'puma', '~> 3.0'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
