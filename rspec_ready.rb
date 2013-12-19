gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

gem_group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end

rake("db:create:all")

generate("rspec:install")

application do
  <<-eos
  config.generators do |g|
    g.test_framework :rspec,
      :fixtures => true, 
      :view_specs => false,
      :helper_specs => false,
      :routing_specs => false,
      :controller_specs => true,
      :request_specs => true
    g.fixture_replacement :factory_girl, :dir => "spec/factories"
  end
  eos
end

if yes?("Please remember to require 'capybara/rspec' in your spec/spec_helper.rb.  Enter 'yes' to continue.")
end