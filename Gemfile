source "https://rubygems.org"
ruby "2.2.0"

gem "rails", "4.2.0"
gem "bundler", ">= 1.7.0"
gem "sass-rails", "~> 5.0.1"
gem "uglifier", ">= 1.3.0"
gem "birthday", "~> 0.3.0"
gem "validates_existence", ">= 0.9.2"
gem "email_validator"
gem "date_validator"
gem "cancancan", "~> 1.10"
gem "therubyracer"
gem "devise"
gem "enumerate_it"

group :development do
  gem "spring"
  gem "bullet"
  gem "letter_opener"
  gem "rubocop", require: false
end

group :test do
  gem "faker"
  gem "capybara"
  gem "poltergeist"
  gem "guard-rspec"
  gem "shoulda-matchers"
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "rspec-expectations"
end

group :development, :test do
  gem "dotenv-rails"
  gem "sqlite3"
end

group :production do
  gem "puma"
  gem "sidekiq"
  gem "rails_12factor"
end

source "https://rails-assets.org" do
  gem "rails-assets-jquery"
  gem "rails-assets-bootstrap"
  gem "rails-assets-font-awesome"
  gem "rails-assets-animate.css"
  gem "rails-assets-moment"
  gem "rails-assets-medium-editor"
end
