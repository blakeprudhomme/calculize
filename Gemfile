source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

## Base
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.3'

## Database
gem 'pg', '>= 0.18', '< 2.0'

## Styles
gem 'cssremedy-rails', '~> 0.1.5'
gem 'sass-rails', '~> 5.0'

## Javascript
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

## Misc
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.5'

## Environment Specific
group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
