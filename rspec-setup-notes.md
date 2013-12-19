#SETTING UP RSPEC

a summary of how I do it

1) Put the gems in the gemfile:

Change `gem sqlite3` to `gem pg`

```ruby
group :development, :test do 
  gem 'rspec-rails' 
  gem 'factory_girl_rails' 
end 

group :test do 
  gem 'faker' 
  gem 'capybara' 
  gem 'guard-rspec' 
  gem 'launchy' 
end 
```

Remember to `bundle install`.

2)  Set up Postgresql as the db

```ruby
#in config/database.yml

development:
  adapter: postgresql
  database: name_of_your_project_development
  host: localhost
  username: appacademy
  
```

[The AA docs on this][pg-setup-aa-docs] are good too.

[pg-setup-aa-docs]: https://github.com/appacademy/sql-curriculum/blob/master/w3d3/first-rails-project.md#postgres

Remember to `rake db:create:all` and run your migrations with `rake db:test:prepare`.

3) Configure RSpec:

Run `rails g rspec:install`.

Add `require "capybara/rspec"` to the `spec/spec_helper.rb`.

Open the hidden `.rspec` file and add any desired configurations. (Like `--format documentation` or `--color`).

Last, add the following to `config/application`:

```ruby
config.generators do |g| 
g.test_framework :rspec, 
  :fixtures => true, 
  :view_specs => false, 
  :helper_specs => false, 
  :routing_specs => false, 
  :controller_specs => false, 
  :request_specs => true 
  g.fixture_replacement :factory_girl, 
  :dir => "spec/factories"
end
```