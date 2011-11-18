source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'haml-rails'
gem 'jquery-rails'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end


group :test, :development do
	gem 'rspec-rails'
	gem 'capybara'			# Used for integration tests. Runs as user in web browser.
	gem 'guard'					# Auto run tests when changes are made '$guard init'
	gem 'guard-rspec'		# Dependancy to use guard with rspec '$guard init rspec'
	gem 'rb-inotify'		# Gem used to Linux notifications
	gem 'libnotify'			# Needed for Linux notifications
	gem 'launchy'
	gem 'factory_girl_rails', '~> 1.2'
	#gem 'remarkable_rails' Makes testing easier. Error on running spec so I'm commenting it out atm.
	gem 'shoulda-matchers'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

