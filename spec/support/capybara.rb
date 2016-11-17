require 'capybara/rspec'
Capybara.configure do |config|
  config.app = Api::Middleware.instance
  config.server_port = 9293
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
Capybara.javascript_driver = :chrome
