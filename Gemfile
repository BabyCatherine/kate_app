source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.2'
gem 'therubyracer'

group :development, :test do
	gem 'sqlite3', '1.3.8'
	gem 'rspec-rails', '2.13.1' #получаем доступ к RSpec-специфичным генераторам
	#включает его в test mode где он нужен для запуска тестов.
end

group :test do #симулировать взаимодействие пользователя с нашим примером приложения
	gem 'selenium-webdriver', '2.35.1'  #используя понятный Англоподобный синтаксис, совместно с Selenium, одной из зависимостей Capybara’
	gem 'capybara', '2.1.0'
end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  gem 'sdoc', require: false
end

group :production do #для развертывания на Heroku
	gem 'pg', '0.15.1'
	gem 'rails_12factor', '0.0.2'
end
